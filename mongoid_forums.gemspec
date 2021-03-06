$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "mongoid_forums/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "mongoid-forums"
  s.version     = MongoidForums::VERSION
  s.authors     = ["skipperguy12"]
  s.email       = ["skipperguy12@users.noreply.github.com"]
  s.homepage    = "http://www.njay.net/"
  s.summary     = "Forum engine for Rails 4 and mongoid"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.require_paths = ['lib']
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.0"
  s.add_dependency 'mongoid', "~> 5.0.0"
  s.add_dependency 'simple_form'
  s.add_dependency 'sanitize', '2.0.6'
  s.add_dependency 'cancancan', '~> 1.10'
  s.add_dependency 'decorators', '2.0.1'
  s.add_dependency "haml"
  s.add_dependency 'gemoji', '= 2.1.0'

  s.add_development_dependency 'devise', '~> 3.4.0'
  s.add_development_dependency "jquery-rails"
  s.add_development_dependency "pry-rails"
  s.add_development_dependency 'kaminari', '~> 0.15.1'
end
