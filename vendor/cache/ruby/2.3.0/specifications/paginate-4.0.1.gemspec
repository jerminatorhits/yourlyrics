# -*- encoding: utf-8 -*-
# stub: paginate 4.0.1 ruby lib

Gem::Specification.new do |s|
  s.name = "paginate"
  s.version = "4.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Nando Vieira"]
  s.date = "2016-04-05"
  s.description = "Paginate collections using SIZE+1 to determine if there is a next page. Includes ActiveRecord and ActionView support."
  s.email = ["fnando.vieira@gmail.com"]
  s.homepage = "http://rubygems.org/gems/paginate"
  s.required_ruby_version = Gem::Requirement.new(">= 2.0.0")
  s.rubygems_version = "2.5.1"
  s.summary = "Paginate collections using SIZE+1 to determine if there is a next page. Includes ActiveRecord and ActionView support."

  s.installed_by_version = "2.5.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<nokogiri>, [">= 0"])
      s.add_development_dependency(%q<sqlite3-ruby>, [">= 0"])
      s.add_development_dependency(%q<rails>, [">= 0"])
      s.add_development_dependency(%q<minitest>, ["~> 5.1"])
      s.add_development_dependency(%q<minitest-utils>, [">= 0"])
      s.add_development_dependency(%q<pry-meta>, [">= 0"])
      s.add_development_dependency(%q<mocha>, [">= 0"])
      s.add_development_dependency(%q<codeclimate-test-reporter>, [">= 0"])
    else
      s.add_dependency(%q<nokogiri>, [">= 0"])
      s.add_dependency(%q<sqlite3-ruby>, [">= 0"])
      s.add_dependency(%q<rails>, [">= 0"])
      s.add_dependency(%q<minitest>, ["~> 5.1"])
      s.add_dependency(%q<minitest-utils>, [">= 0"])
      s.add_dependency(%q<pry-meta>, [">= 0"])
      s.add_dependency(%q<mocha>, [">= 0"])
      s.add_dependency(%q<codeclimate-test-reporter>, [">= 0"])
    end
  else
    s.add_dependency(%q<nokogiri>, [">= 0"])
    s.add_dependency(%q<sqlite3-ruby>, [">= 0"])
    s.add_dependency(%q<rails>, [">= 0"])
    s.add_dependency(%q<minitest>, ["~> 5.1"])
    s.add_dependency(%q<minitest-utils>, [">= 0"])
    s.add_dependency(%q<pry-meta>, [">= 0"])
    s.add_dependency(%q<mocha>, [">= 0"])
    s.add_dependency(%q<codeclimate-test-reporter>, [">= 0"])
  end
end
