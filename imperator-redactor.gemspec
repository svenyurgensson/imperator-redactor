# -*- encoding: utf-8 -*-

$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "imperator-redactor/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "imperator-redactor"
  s.version     = ImperatorRedactor::VERSION
  s.authors       = ["Yury Batenko"]
  s.email         = ["jurbat@gmail.com"]
  s.description   = %q{Imperavi WYSIWYG editor for Rails 3.2+}
  s.summary       = %q{Imperavi WYSIWYG editor for Rails 3.2+}
  s.homepage      = "https://github.com/svenyurgensson/imperator-redactor"


  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "README.md"]
  s.test_files    = Dir["test/**/*"]
  s.test_files    = s.files.grep(%r{^(test|spec|features)/})
  s.name          = "imperator-redactor"
  s.require_paths = ["lib"]

  s.add_dependency "rails", "~> 3.2.6"
  s.add_dependency "jquery-rails"

  s.add_development_dependency "sqlite3"
end
