class Article < ActiveRecord::Base

  validates :title, presence: true
  validates :author, presence: true
  validates :url, presence: true
end
