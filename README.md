# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Init command
  ```
  rails new shoutr -d postgresql -T
  ```

* Ruby version
  ```
  ruby 2.6.5
  rails 6.0.2.2
  rvm gemset use todos
  ```


* System dependencies
  ```
  postgresql ( database )
  clearance gem ( Authentication Framework )
  sunspot_rails ( Search engine )
  ```

* Configuration
  Testing Frameworks
    ```
    rails generate rspec:install # Create configuration rspec folders and files
    Capybara (Acceptance Test)
    database_cleaner
    bundle.pry (Debug)
    FactoryGirl (Fake data)
    ```
* Database
  ```
  rake db:create
  ```
* Database initialization
  ```
  docker-compose.yml (If you want to test the app without install postgresql)
  docker-compose up -d
  ```

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
