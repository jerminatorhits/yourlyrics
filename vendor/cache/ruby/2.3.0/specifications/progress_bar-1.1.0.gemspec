# -*- encoding: utf-8 -*-
# stub: progress_bar 1.1.0 ruby lib

Gem::Specification.new do |s|
  s.name = "progress_bar"
  s.version = "1.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Paul Sadauskas"]
  s.date = "2016-11-25"
  s.description = "Give people feedback about long-running tasks without overloading them with information: Use a progress bar, like Curl or Wget!"
  s.email = ["psadauskas@gmail.com"]
  s.homepage = "http://github.com/paul/progress_bar"
  s.rubyforge_project = "progress_bar"
  s.rubygems_version = "2.5.1"
  s.summary = "Simple Progress Bar for output to a terminal"

  s.installed_by_version = "2.5.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<options>, ["~> 2.3.0"])
      s.add_runtime_dependency(%q<highline>, ["~> 1.6"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<rspec>, [">= 0"])
      s.add_development_dependency(%q<timecop>, [">= 0"])
    else
      s.add_dependency(%q<options>, ["~> 2.3.0"])
      s.add_dependency(%q<highline>, ["~> 1.6"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<rspec>, [">= 0"])
      s.add_dependency(%q<timecop>, [">= 0"])
    end
  else
    s.add_dependency(%q<options>, ["~> 2.3.0"])
    s.add_dependency(%q<highline>, ["~> 1.6"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<rspec>, [">= 0"])
    s.add_dependency(%q<timecop>, [">= 0"])
  end
end