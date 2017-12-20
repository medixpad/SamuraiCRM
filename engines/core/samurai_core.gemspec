$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "samurai/core/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "samurai_core"
  s.version     = Samurai::Core::VERSION
  s.authors     = ["Jonh Doe"]
  s.email       = ["jonhdoe@example.com"]
  s.homepage    = "http://www.somepage.com"
  s.summary     = "Summary of Core."
  s.description = "Description of Core."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.1.4"
  s.add_dependency "sass-rails", "~> 5.0", ">= 5.0.7"
  s.add_dependency "jquery-rails", "~> 4.3", ">= 4.3.1"
  s.add_dependency "bootstrap-sass", "~> 3.3", ">= 3.3.7"
  s.add_dependency "autoprefixer-rails", "~> 7.2", ">= 7.2.3"
  s.add_dependency "devise", "~> 4.2"
  s.add_dependency "cancancan" , "~> 2.1", ">= 2.1.2"
  s.add_development_dependency "sqlite3"
  s.add_development_dependency "rspec-rails", "~> 3.7", ">= 3.7.2"
  s.add_development_dependency "factory_bot_rails", "~> 4.8", ">= 4.8.2"
  s.add_development_dependency "faker", "~> 1.8", ">= 1.8.5"
  s.add_development_dependency "database_cleaner", "~> 1.6", ">= 1.6.2"
end
