# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "mongoid/version"

Gem::Specification.new do |s|
  s.name        = "mongoid_phone_number"
  s.version     = MongoidPhoneNumber::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Sarwagya"]
  s.email       = ["sarwagya@sprout-technology.com"]
  s.homepage = %q{http://github.com/sarwagya/mongoid_phone_number}
  s.summary     = %q{Adds a custom field type 'PhoneNumber' in mongoid}
  s.description = %q{Every non-numeric character is removed from the field and only the numeric value is stored.}

  s.rubyforge_project = "mongoid_phone_number"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_paths = ["lib"]

  s.add_dependency("mongoid", "~>2.0.0")
  s.add_dependency("bson_ext", ">=0")
  s.add_dependency("activesupport", "~>3.0.0")
  s.add_dependency("phony", "~>1.4.1")

  s.add_development_dependency("rspec", "~>2.5.0")
  s.add_development_dependency("database_cleaner", ">= 0")
  s.add_development_dependency("fabrication", "~>0.9.0")
end
