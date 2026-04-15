source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby ">= 2.7.0"

# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem 'activemodel'
gem 'actionpack'

gem "mongoid"

# Use graphql gem for handle API
gem 'graphql', "~> 2.5.22"

group :development, :test do
  gem "pry-byebug"
  gem "rspec-rails"
end

group :development do
  # Speed up commands on slow machines / big apps [https://github.com/rails/spring]
  # gem "spring"
end

