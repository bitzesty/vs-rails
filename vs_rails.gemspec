$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "vs_rails/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "vs_rails"
  s.version     = VsRails::VERSION
  s.authors     = ["Mateusz Kozak"]
  s.email       = ["mateusz@mkozak.pl"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of VsRails."
  s.description = "TODO: Description of VsRails."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.0"

  s.add_development_dependency "sqlite3"
end
