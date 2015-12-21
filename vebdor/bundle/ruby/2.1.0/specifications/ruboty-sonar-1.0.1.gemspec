# -*- encoding: utf-8 -*-
# stub: ruboty-sonar 1.0.1 ruby lib

Gem::Specification.new do |s|
  s.name = "ruboty-sonar"
  s.version = "1.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["tbpgr"]
  s.date = "2015-01-05"
  s.description = "Search ruboty plugin gems."
  s.email = ["tbpgr@tbpgr.jp"]
  s.executables = ["ruboty-sonar"]
  s.files = ["bin/ruboty-sonar"]
  s.homepage = "https://github.com/tbpgr/ruboty-sonar"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.2.2"
  s.summary = "Search ruboty plugin gems."

  s.installed_by_version = "2.2.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<thor>, [">= 0"])
      s.add_runtime_dependency(%q<gems>, [">= 0"])
      s.add_development_dependency(%q<bundler>, ["~> 1.6"])
      s.add_development_dependency(%q<rake>, ["~> 10.0"])
    else
      s.add_dependency(%q<thor>, [">= 0"])
      s.add_dependency(%q<gems>, [">= 0"])
      s.add_dependency(%q<bundler>, ["~> 1.6"])
      s.add_dependency(%q<rake>, ["~> 10.0"])
    end
  else
    s.add_dependency(%q<thor>, [">= 0"])
    s.add_dependency(%q<gems>, [">= 0"])
    s.add_dependency(%q<bundler>, ["~> 1.6"])
    s.add_dependency(%q<rake>, ["~> 10.0"])
  end
end
