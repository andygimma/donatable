$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "donatable/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "donatable"
  s.version     = Donatable::VERSION
  s.authors     = ["andygimma"]
  s.email       = ["andy.gimma@kiron.ngo"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of Donatable."
  s.description = "TODO: Description of Donatable."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.1.4"

  s.add_development_dependency "sqlite3"
end
