$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem"s version:
require "donatable/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "donatable"
  s.version     = Donatable::VERSION
  s.authors     = ["andygimma"]
  s.email       = ["andy.gimma@kiron.ngo"]
  # s.homepage    = "TODO"
  s.summary     = "Reusable donations engine"
  # s.description = "TODO: Description of Donatable."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  s.test_files = Dir["spec/**/*"]

  s.add_dependency "rails", "~> 5.1.4"
  s.add_development_dependency "rspec-rails"
  s.add_development_dependency "capybara"
  s.add_development_dependency "factory_girl_rails"
  s.add_development_dependency "pg"
  s.add_development_dependency "high_voltage", "~> 3.0.0"
  s.add_development_dependency 'bootstrap', '~> 4.0.0.beta'
  s.add_development_dependency 'jquery-rails'
end