# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "version"

Gem::Specification.new do |s|
  s.name        = "mongoid_phone_number"
  s.version     = '0.0.0'
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["TODO: Sarwagya"]
  s.email       = ["TODO: sarwagya@sprout-technology.com"]
  s.homepage    = ""
  s.summary     = %q{Adds a custom field type 'PhoneNumber' in mongoid}
  s.description = %q{Every non-numeric character is removed from the field and only the numeric value is stored.}

  s.rubyforge_project = "mongoid_phone_number"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency("phony",'~>1.4.1')
end
