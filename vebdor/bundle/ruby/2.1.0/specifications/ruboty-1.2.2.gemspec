# -*- encoding: utf-8 -*-
# stub: ruboty 1.2.2 ruby lib

Gem::Specification.new do |s|
  s.name = "ruboty"
  s.version = "1.2.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Ryo Nakamura"]
  s.date = "2015-04-09"
  s.email = ["r7kamura@gmail.com"]
  s.executables = ["ruboty"]
  s.files = ["bin/ruboty"]
  s.homepage = "https://github.com/r7kamura/ruboty"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.2.2"
  s.summary = "Ruby + Bot = Ruboty"

  s.installed_by_version = "2.2.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activesupport>, [">= 0"])
      s.add_runtime_dependency(%q<bundler>, [">= 0"])
      s.add_runtime_dependency(%q<dotenv>, [">= 0"])
      s.add_runtime_dependency(%q<mem>, [">= 0"])
      s.add_runtime_dependency(%q<slop>, [">= 0"])
      s.add_development_dependency(%q<codeclimate-test-reporter>, [">= 0.3.0"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<rspec>, ["= 2.14.1"])
      s.add_development_dependency(%q<simplecov>, [">= 0"])
    else
      s.add_dependency(%q<activesupport>, [">= 0"])
      s.add_dependency(%q<bundler>, [">= 0"])
      s.add_dependency(%q<dotenv>, [">= 0"])
      s.add_dependency(%q<mem>, [">= 0"])
      s.add_dependency(%q<slop>, [">= 0"])
      s.add_dependency(%q<codeclimate-test-reporter>, [">= 0.3.0"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<rspec>, ["= 2.14.1"])
      s.add_dependency(%q<simplecov>, [">= 0"])
    end
  else
    s.add_dependency(%q<activesupport>, [">= 0"])
    s.add_dependency(%q<bundler>, [">= 0"])
    s.add_dependency(%q<dotenv>, [">= 0"])
    s.add_dependency(%q<mem>, [">= 0"])
    s.add_dependency(%q<slop>, [">= 0"])
    s.add_dependency(%q<codeclimate-test-reporter>, [">= 0.3.0"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<rspec>, ["= 2.14.1"])
    s.add_dependency(%q<simplecov>, [">= 0"])
  end
end
