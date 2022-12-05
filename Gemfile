# frozen_string_literal: true

source 'https://rubygems.org'
ruby '2.5.5'

gemspec

gem 'graphql'

gem 'nokogiri', '>= 1.10.4'

gem 'activemodel', '>= 5.1'
gem 'actionpack', '>= 6.0.1'

group :development, :test do
  gem 'byebug'
  gem 'simplecov', require: false
  gem 'pry-rails', '~> 0.3.4'

  # Adds step-by-step debugging and stack navigation capabilities to pry using byebug.
  gem 'pry-byebug'
end

group :test do
  gem 'mongoid'
  gem 'mongoid-rspec'
  gem 'rspec'
  gem 'rspec-rails', '>= 6.0'
  gem 'sqlite3'
end
