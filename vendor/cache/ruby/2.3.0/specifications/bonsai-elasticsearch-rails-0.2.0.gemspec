# -*- encoding: utf-8 -*-
# stub: bonsai-elasticsearch-rails 0.2.0 ruby lib

Gem::Specification.new do |s|
  s.name = "bonsai-elasticsearch-rails"
  s.version = "0.2.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Rob Sears", "Nick Zadrozny"]
  s.date = "2016-10-27"
  s.description = "                          This gem offers a shim to connect Rails apps with a Bonsai\n                          Elasticsearch cluster. The official Elasticsearch gem package\n                          requires some minor configuration tweaks in order to work\n                          correctly with Bonsai (namely the client needs to be instantiated\n                          with the cluster location and HTTP authentication details), and\n                          the process can be somewhat complicated for users who are\n                          unfamiliar with the system.\n\n                          The bonsai-elasticsearch-rails gem automatically sets up the\n                          Elasticsearch client correctly so users don't need to worry about\n                          configuring it in their code or writing an initializer.\n\n                          In order for the gem to work correctly, the application needs an\n                          environment variable called `BONSAI_URL`, which is populated with\n                          the complete Bonsai Elaticsearch cluster URL, including the HTTP\n                          authentication. The cluster URL will follow this pattern:\n\n                          https://user1234:pass5678@cluster-slug-123.aws-region-X.bonsai.io/\n\n                          On Heroku, this variable is created and populated automatically\n                          when Bonsai is added to the application. Heroku users therefore do\n                          not need to perform any additional configuration to connect to\n                          their cluster after adding the bonsai-elasticsearch-rails gem.\n\n                          Users who are self-hosting their Rails app will need to make sure\n                          this environment variable is present:\n\n                          export BONSAI_URL=\"https://user1234:pass5678@aws-region-X.bonsai.io/\"\n\n                          The cluster URL is available via the Bonsai dashboard.\n"
  s.email = ["rob@onemorecloud.com", "nick@onemorecloud.com"]
  s.homepage = "https://github.com/omc/bonsai-elasticsearch-rails"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.5.1"
  s.summary = "Integrate your elasticsearch-rails gem with Bonsai Elasticsearch."

  s.installed_by_version = "2.5.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<elasticsearch-model>, ["~> 0"])
      s.add_runtime_dependency(%q<elasticsearch-rails>, ["~> 0"])
      s.add_development_dependency(%q<bundler>, ["~> 1"])
      s.add_development_dependency(%q<rake>, ["< 11.0"])
    else
      s.add_dependency(%q<elasticsearch-model>, ["~> 0"])
      s.add_dependency(%q<elasticsearch-rails>, ["~> 0"])
      s.add_dependency(%q<bundler>, ["~> 1"])
      s.add_dependency(%q<rake>, ["< 11.0"])
    end
  else
    s.add_dependency(%q<elasticsearch-model>, ["~> 0"])
    s.add_dependency(%q<elasticsearch-rails>, ["~> 0"])
    s.add_dependency(%q<bundler>, ["~> 1"])
    s.add_dependency(%q<rake>, ["< 11.0"])
  end
end
