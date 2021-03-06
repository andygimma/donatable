$:.push File.expand_path('../lib', __FILE__)

# Maintain your gem's version:
require 'donatable/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'donatable'
  s.version     = Donatable::VERSION
  s.authors     = ['andygimma']
  s.email       = ['andy.n.gimma@gmail.com']
  # s.homepage    = 'TODO'
  s.summary     = 'Reusable donations engine'
  # s.description = 'TODO: Description of Donatable.'
  s.license     = 'MIT'

  s.files = Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.md']
  s.test_files = Dir['spec/**/*']

  s.add_dependency 'rails', '~> 5.1.4'
  s.add_development_dependency 'rspec-rails'
  s.add_development_dependency 'capybara'
  s.add_development_dependency 'factory_girl_rails'
  s.add_development_dependency 'faker'
  s.add_development_dependency 'pry'
  s.add_development_dependency 'rubocop'
  s.add_development_dependency 'simplecov'

  s.add_dependency 'pg'
  s.add_dependency 'bootstrap', '~> 4.0.0.beta'
  s.add_dependency 'jquery-rails'
  s.add_dependency 'pg_search'
  s.add_dependency 'popper_js'
  s.add_dependency 'tether-rails'
  s.add_dependency 'font-awesome-rails'
  s.add_dependency 'friendly_id', '~> 5.1.0'
  s.add_dependency 'acts-as-taggable-on', '~> 4.0'
  s.add_dependency 'paperclip', '~> 5.0.0'
  s.add_dependency 'aws-sdk', '~> 2'
  s.add_dependency 'kaminari'
end
