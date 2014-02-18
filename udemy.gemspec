$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "udemy/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "udemy"
  s.version     = Udemy::VERSION
  s.authors     = ["Jonathan Lancar"]
  s.email       = ["jonaphin@gmail.com"]
  s.homepage    = "http://www.genesx.com"
  s.summary     = "Udemy.com API Gem."
  s.description = "Udemy.com API Wrapper for Ruby."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "hashie", "~> 2.0.5"
  s.add_dependency "httparty", "~> 0.13.0"

  s.add_development_dependency "rails", ">= 3.0"
  s.add_development_dependency "sqlite3"
  s.add_development_dependency "rspec-rails"
  s.add_development_dependency "webmock", "~> 1.17.3"
  s.add_development_dependency "vcr", "~> 2.8.0"
end
