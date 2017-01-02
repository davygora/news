== README

* Ruby version - 2.2.2
* Rails version - 4.2.5.2
* Database - Postgresql

#### How to run:
```sh
  $ git clone git@github.com:davygora/news.git
  Update username & password in /config/database.yml
  $ rake db:setup
  $ rake db:migrate
  $ rails s
```

#### How to run rake task:
```sh
  $ rake fetch_data
```
#### How to use Web-verison:
```sh
  http://localhost:3000/
```  
#### How to use API:
##### All articles:
```sh
http://localhost:3000/api/v1/articles/
```

##### Article by id:
```sh
http://localhost:3000/api/v1/articles/1
```
