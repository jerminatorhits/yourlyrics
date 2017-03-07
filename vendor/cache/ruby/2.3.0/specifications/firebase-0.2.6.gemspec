# -*- encoding: utf-8 -*-
# stub: firebase 0.2.6 ruby lib

Gem::Specification.new do |s|
  s.name = "firebase"
  s.version = "0.2.6"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Oscar Del Ben"]
  s.date = "2015-11-26"
  s.description = "Firebase wrapper for Ruby"
  s.email = "info@oscardelben.com"
  s.extra_rdoc_files = ["CHANGELOG.md", "LICENSE.txt", "README.md"]
  s.files = ["CHANGELOG.md", "LICENSE.txt", "README.md"]
  s.homepage = "http://github.com/oscardelben/firebase-ruby"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.5.1"
  s.summary = "Firebase wrapper for Ruby"

  s.installed_by_version = "2.5.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<httpclient>, [">= 0"])
      s.add_runtime_dependency(%q<json>, [">= 0"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<rdoc>, [">= 0"])
      s.add_development_dependency(%q<rspec>, [">= 0"])
    else
      s.add_dependency(%q<httpclient>, [">= 0"])
      s.add_dependency(%q<json>, [">= 0"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<rdoc>, [">= 0"])
      s.add_dependency(%q<rspec>, [">= 0"])
    end
  else
    s.add_dependency(%q<httpclient>, [">= 0"])
    s.add_dependency(%q<json>, [">= 0"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<rdoc>, [">= 0"])
    s.add_dependency(%q<rspec>, [">= 0"])
  end
end
