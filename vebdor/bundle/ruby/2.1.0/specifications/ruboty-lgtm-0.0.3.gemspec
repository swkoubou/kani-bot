# -*- encoding: utf-8 -*-
# stub: ruboty-lgtm 0.0.3 ruby lib

Gem::Specification.new do |s|
  s.name = "ruboty-lgtm"
  s.version = "0.0.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["negipo"]
  s.date = "2014-06-23"
  s.email = ["negipo@gmail.com"]
  s.homepage = "http://github.com/negipo/ruboty-lgtm"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.2.2"
  s.summary = "An ruboty handler to generate lgtm image."

  s.installed_by_version = "2.2.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<ruboty>, [">= 0"])
      s.add_runtime_dependency(%q<faraday>, [">= 0"])
      s.add_runtime_dependency(%q<faraday_middleware>, [">= 0"])
      s.add_development_dependency(%q<bundler>, ["~> 1.6"])
      s.add_development_dependency(%q<rake>, [">= 0"])
    else
      s.add_dependency(%q<ruboty>, [">= 0"])
      s.add_dependency(%q<faraday>, [">= 0"])
      s.add_dependency(%q<faraday_middleware>, [">= 0"])
      s.add_dependency(%q<bundler>, ["~> 1.6"])
      s.add_dependency(%q<rake>, [">= 0"])
    end
  else
    s.add_dependency(%q<ruboty>, [">= 0"])
    s.add_dependency(%q<faraday>, [">= 0"])
    s.add_dependency(%q<faraday_middleware>, [">= 0"])
    s.add_dependency(%q<bundler>, ["~> 1.6"])
    s.add_dependency(%q<rake>, [">= 0"])
  end
end
