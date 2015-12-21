# -*- encoding: utf-8 -*-
# stub: ruboty-gen 1.2.0 ruby lib

Gem::Specification.new do |s|
  s.name = "ruboty-gen"
  s.version = "1.2.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["block_given?"]
  s.date = "2014-12-17"
  s.email = ["block_given@outlook.com"]
  s.executables = ["ruboty-gen"]
  s.files = ["bin/ruboty-gen"]
  s.homepage = "https://github.com/blockgiven/ruboty-gen"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.2.2"
  s.summary = "generators for creating ruboty plugin."

  s.installed_by_version = "2.2.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<bundler>, ["~> 1.7"])
      s.add_runtime_dependency(%q<ruboty>, [">= 0"])
      s.add_development_dependency(%q<rake>, ["~> 10.0"])
    else
      s.add_dependency(%q<bundler>, ["~> 1.7"])
      s.add_dependency(%q<ruboty>, [">= 0"])
      s.add_dependency(%q<rake>, ["~> 10.0"])
    end
  else
    s.add_dependency(%q<bundler>, ["~> 1.7"])
    s.add_dependency(%q<ruboty>, [">= 0"])
    s.add_dependency(%q<rake>, ["~> 10.0"])
  end
end
