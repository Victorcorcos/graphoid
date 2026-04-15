# frozen_string_literal: true

$LOAD_PATH.push File.expand_path('lib', __dir__)

# Describe your gem and declare its dependencies:
Gem::Specification.new do |gem|
  gem.name        = 'graphoid'
  gem.version     = '1.3.5'
  gem.authors     = ['Nilton Vasques', 'Maximiliano Perez Coto']
  gem.email       = ['nilton.vasques@gmail.com']
  gem.homepage    = 'https://github.com/oxeanbits/graphoid'
  gem.summary     = 'Generates a GraphQL API from Rails ActiveRecord or Mongoid'
  gem.description = 'A gem that helps you autogenerate a GraphQL API from Mongoid or ActiveRecord models.'
  gem.license     = 'MIT'

  gem.files = Dir['{lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.md']

  gem.required_ruby_version = '>= 2.7.0'

  gem.add_dependency 'graphql', '>= 2.0.21'
  gem.add_dependency 'rails', '>= 6.0'
end
