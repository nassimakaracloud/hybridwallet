source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

gem 'dotenv-rails', groups: [:development, :test]

ruby '2.4.0'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.2.1'

# Use Puma as the app server
gem 'puma', '~> 3.11'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'mini_racer', platforms: :ruby

# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'
gem 'rails-observers'
# Use ActiveStorage variant
# gem 'mini_magick', '~> 4.8'



# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.1.0', require: false

#Flexible authentication solution for Rails with Warden
gem 'devise', '~> 4.5'
#The most popular HTML, CSS, and JavaScript framework for developing responsive, mobile first projects on the web. http://getbootstrap.com
gem 'bootstrap', '~> 4.1', '>= 4.1.3'
#This gem provides jQuery and the jQuery-ujs driver for your Rails 4+ application.
gem 'jquery-rails', '~> 4.3', '>= 4.3.3'
#query web services and examine the resulting output
gem 'httparty'
#csv export in Ruby on Rails
gem 'csv_export'
#A simple Ruby wrapper for BitCoin Average API
gem 'bitcoinaverage-ruby', git: 'https://github.com/nassimakaracloud/bitcoinaverage-ruby'

gem "aws-sdk-s3", require: false

gem 'rails-html-sanitizer', '~> 1.0', '>= 1.0.4'



group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
   # Preloads your application so things like console, rake and tests run faster
  gem 'spring', '~> 2.0', '>= 2.0.2'
  # rspec-rails is a testing framework for Rails 3+.
  gem 'rspec-rails', '~> 3.8', '>= 3.8.1'
  # rspec command for spring
  gem 'spring-commands-rspec', '~> 1.0', '>= 1.0.4'
  # Guard::RSpec automatically run your specs (much like autotest).
  gem 'guard-rspec', '~> 4.7', '>= 4.7.3', require: false
  #An IRB alternative and runtime developer console
  gem 'pry-rails'
  # Use sqlite3 as the database for Active Record
  gem 'sqlite3'
  
  gem 'dotenv'
  
  
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '~> 3.7'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring', '~> 2.0', '>= 2.0.2'
  #Makes spring watch files using the listen gem.
  gem 'spring-watcher-listen', '~> 2.0', '>= 2.0.1'
  
  gem 'brakeman', '~> 4.3', '>= 4.3.1', :require => false
  
 
end

group :test do
  # Adds support for Capybara system testing and selenium driver. Capybara is an integration testing tool for rack based web applications. It simulates how a user would interact with a website
  gem 'capybara', '~> 3.11', '>= 3.11.1'
  # WebDriver is a tool for writing automated tests of websites. It aims to mimic the behaviour of a real user, and as such interacts with the HTML of the application.
  gem 'selenium-webdriver', '~> 3.141'
  # Easy installation and use of chromedriver to run system tests with Chrome
  gem 'chromedriver-helper'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

group :production do
  # Use PostgresSQL
  gem "pg", '>= 0.18', '< 2.0'
  #enables serving assets in production and setting your logger to standard out
  gem 'rails_12factor', '~> 0.0.3'
  
end