# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name        = "mongoid_phone_number"
  s.version     = '0.0.0'
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["TODO: Sarwagya"]
  s.email       = ["TODO: sarwagya@sprout-technology.com"]
  s.homepage = %q{http://github.com/sarwagya/mongoid_phone_number}
  s.summary     = %q{Adds a custom field type 'PhoneNumber' in mongoid}
  s.description = %q{Every non-numeric character is removed from the field and only the numeric value is stored.}

  s.rubyforge_project = "mongoid_phone_number"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_paths = ["lib"]


  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<mongoid>, ["= 2.0.0.rc.7"])
      s.add_runtime_dependency(%q<activesupport>, ["~> 3.0.0"])
      s.add_development_dependency(%q<rspec>, ["~> 2.5.0"])
      s.add_development_dependency(%q<bundler>, ["~> 1.0.0"])
      s.add_development_dependency(%q<jeweler>, ["~> 1.5.2"])
      s.add_development_dependency(%q<rcov>, [">= 0"])
      s.add_development_dependency(%q<database_cleaner>, [">= 0"])
      s.add_development_dependency(%q<bson_ext>, [">= 0"])
      s.add_development_dependency(%q<fabrication>, ["~> 0.9.0"])
      s.add_dependency(%q<phony>,["~>1.4.1"])
    else
      s.add_dependency(%q<mongoid>, ["= 2.0.0.rc.7"])
      s.add_dependency(%q<activesupport>, ["~> 3.0.0"])
      s.add_dependency(%q<rspec>, ["~> 2.5.0"])
      s.add_dependency(%q<bundler>, ["~> 1.0.0"])
      s.add_dependency(%q<jeweler>, ["~> 1.5.2"])
      s.add_dependency(%q<rcov>, [">= 0"])
      s.add_dependency(%q<database_cleaner>, [">= 0"])
      s.add_dependency(%q<bson_ext>, [">= 0"])
      s.add_dependency(%q<fabrication>, ["~> 0.9.0"])
      s.add_dependency(%q<phony>,["~>1.4.1"])
    end
  else
    s.add_dependency(%q<mongoid>, ["= 2.0.0.rc.7"])
    s.add_dependency(%q<activesupport>, ["~> 3.0.0"])
    s.add_dependency(%q<rspec>, ["~> 2.5.0"])
    s.add_dependency(%q<bundler>, ["~> 1.0.0"])
    s.add_dependency(%q<jeweler>, ["~> 1.5.2"])
    s.add_dependency(%q<rcov>, [">= 0"])
    s.add_dependency(%q<database_cleaner>, [">= 0"])
    s.add_dependency(%q<bson_ext>, [">= 0"])
    s.add_dependency(%q<fabrication>, ["~> 0.9.0"])
    s.add_dependency(%q<phony>,["~>1.4.1"])
  end

end
