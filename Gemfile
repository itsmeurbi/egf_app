source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.3'

gem 'bulma-rails', '~> 0.7.5'
gem 'bootsnap', '>= 1.4.2', require: false
gem 'font-awesome-sass', '~> 5.9.0'
gem 'haml-rails', '~> 2.0'
gem 'jbuilder', '~> 2.7'
gem 'omniauth-google-oauth2'
gem 'omniauth-rails_csrf_protection', '~> 0.1'
gem 'pg'
gem 'puma', '~> 3.11'
gem 'rails', '~> 6.0.0'
gem 'sass-rails', '~> 5'
gem 'turbolinks', '~> 5'
gem 'webpacker', '~> 4.0'

group :development, :test do
  gem 'pry-rails'
  gem 'pry-byebug'
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
end

group :test do
  gem 'capybara', '>= 2.15'
  gem 'mocha'
  gem 'selenium-webdriver'
  gem 'webdrivers'
end

group :development, :test do
  gem 'bundler-audit'
  gem 'brakeman'
  gem 'rubocop', require: false
end

group :staging, :production do
  gem 'aws-sdk-s3', require: false
end
