source 'http://rubygems.org'

gem 'sinatra'
gem 'activerecord', '~> 5.2'
gem 'sinatra-activerecord', :require => 'sinatra/activerecord'
gem 'rake'
gem 'require_all'
# gem 'pg'

gem 'shotgun'
gem 'pry'
gem 'bcrypt'
# gem 'tux'
gem 'faker'

group :development do
  gem 'sqlite3'
  gem "tux"
end

group :production do
  gem 'pg'
  gem 'thin'
 end

group :test do
  gem 'rspec'
  gem 'capybara'
  gem 'rack-test'
end

gem "dotenv", "~> 2.7"

gem "sinatra-flash", "~> 0.3.0"