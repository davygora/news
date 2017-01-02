desc 'Fetch data from news.ycombinator.com'
task :fetch_data => :environment do
  require 'nokogiri'
  require 'open-uri'

  results, titles_links, authors = [], [], []

  (1..5).each do |i|
    doc = Nokogiri::HTML(open("https://news.ycombinator.com/news?p=#{i}").read)

    doc.css('.athing').each do |article|
      title = article.css('.title .storylink').text
      href = article.css('.storylink')
      links = href.map{|l| l['href']}

      titles_links.push(
        title: title,
        url: links)
    end

    doc.css('.subtext .hnuser').each do |name|
      authors.push(
        author: name.text)
    end
  end
  results = titles_links.map.with_index {|e,i| e.merge(authors[i])}
  results.each do |i|
    Article.create(title: i[:title], author: i[:author], url: i[:url].join(","))
  end
end