source 'https://rubygems.org'

ruby '2.1.2'

gem 'rails'
gem 'sass-rails', '~> 4.0.3'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'haml-rails'

gem 'jquery-rails'
gem 'jbuilder', '~> 2.0'
gem 'sdoc', '~> 0.4.0', group: :doc

gem 'devise'
gem 'cancancan'
gem 'hashie'
gem 'omniauth'
gem 'omniauth-amazon'
gem 'omniauth-twitter'
gem 'omniauth-google-oauth2'
gem 'figaro'
gem 'annotate'
gem 'gravtastic'

group :development do
  # gem 'better_errors'
  # gem 'binding_of_caller'
  gem 'letter_opener'
  gem 'pry-rails'
  gem 'quiet_assets'
  gem 'spring'
  gem 'spring-commands-rspec'
end

group :development, :test do
  gem 'sqlite3'
  gem 'factory_girl_rails', require: false
  gem 'rspec-rails'
end

group :test do
  gem 'capybara'
  gem 'launchy'
  gem 'simplecov'
end

group :production do
  gem 'pg'
  gem 'rails_12factor'
end
