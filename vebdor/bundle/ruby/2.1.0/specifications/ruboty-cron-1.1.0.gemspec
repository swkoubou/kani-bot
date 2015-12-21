# -*- encoding: utf-8 -*-
# stub: ruboty-cron 1.1.0 ruby lib

Gem::Specification.new do |s|
  s.name = "ruboty-cron"
  s.version = "1.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Ryo Nakamura"]
  s.date = "2015-10-15"
  s.email = ["r7kamura@gmail.com"]
  s.homepage = "https://github.com/r7kamura/ruboty-cron"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.2.2"
  s.summary = "Mount cron system to Ruboty to schedule messages on a specific time."

  s.installed_by_version = "2.2.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activesupport>, [">= 0"])
      s.add_runtime_dependency(%q<chrono>, [">= 0"])
      s.add_runtime_dependency(%q<ruboty>, [">= 0.2.0"])
      s.add_development_dependency(%q<bundler>, ["~> 1.6"])
      s.add_development_dependency(%q<rake>, [">= 0"])
    else
      s.add_dependency(%q<activesupport>, [">= 0"])
      s.add_dependency(%q<chrono>, [">= 0"])
      s.add_dependency(%q<ruboty>, [">= 0.2.0"])
      s.add_dependency(%q<bundler>, ["~> 1.6"])
      s.add_dependency(%q<rake>, [">= 0"])
    end
  else
    s.add_dependency(%q<activesupport>, [">= 0"])
    s.add_dependency(%q<chrono>, [">= 0"])
    s.add_dependency(%q<ruboty>, [">= 0.2.0"])
    s.add_dependency(%q<bundler>, ["~> 1.6"])
    s.add_dependency(%q<rake>, [">= 0"])
  end
end
