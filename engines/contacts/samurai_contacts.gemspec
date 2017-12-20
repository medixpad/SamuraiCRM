$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "samurai/contacts/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "samurai_contacts"
  s.version     = Samurai::Contacts::VERSION
  s.authors     = ["Jonh Doe"]
  s.email       = ["jonhdoe@example.com"]
  s.homepage    = "http://www.somepage.com"
  s.summary     = "Summary of Contacts."
  s.description = "Description of Contacts."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.1.4"
  s.add_dependency "samurai_core"
  s.add_dependency "deface", "~> 1.3"
  s.add_development_dependency "sqlite3"
end
