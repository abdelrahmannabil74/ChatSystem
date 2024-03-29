# -*- encoding: utf-8 -*-
# stub: elasticsearch-transport 7.3.0 ruby lib

Gem::Specification.new do |s|
  s.name = "elasticsearch-transport".freeze
  s.version = "7.3.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Karel Minarik".freeze]
  s.date = "2019-08-01"
  s.description = "Ruby client for Elasticsearch. See the `elasticsearch` gem for full integration.\n".freeze
  s.email = ["karel.minarik@elasticsearch.org".freeze]
  s.extra_rdoc_files = ["README.md".freeze, "LICENSE".freeze]
  s.files = ["LICENSE".freeze, "README.md".freeze]
  s.homepage = "https://github.com/elasticsearch/elasticsearch-ruby/tree/master/elasticsearch-transport".freeze
  s.licenses = ["Apache-2.0".freeze]
  s.rdoc_options = ["--charset=UTF-8".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 1.9".freeze)
  s.rubygems_version = "3.0.6".freeze
  s.summary = "Ruby client for Elasticsearch.".freeze

  s.installed_by_version = "3.0.6" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<multi_json>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<faraday>.freeze, [">= 0"])
      s.add_development_dependency(%q<bundler>.freeze, [">= 0"])
      s.add_development_dependency(%q<rake>.freeze, ["~> 11.1"])
      s.add_development_dependency(%q<ansi>.freeze, [">= 0"])
      s.add_development_dependency(%q<shoulda-context>.freeze, [">= 0"])
      s.add_development_dependency(%q<mocha>.freeze, [">= 0"])
      s.add_development_dependency(%q<yard>.freeze, [">= 0"])
      s.add_development_dependency(%q<pry>.freeze, [">= 0"])
      s.add_development_dependency(%q<curb>.freeze, [">= 0"])
      s.add_development_dependency(%q<patron>.freeze, [">= 0"])
      s.add_development_dependency(%q<typhoeus>.freeze, ["~> 0.6"])
      s.add_development_dependency(%q<net-http-persistent>.freeze, [">= 0"])
      s.add_development_dependency(%q<httpclient>.freeze, [">= 0"])
      s.add_development_dependency(%q<hashie>.freeze, [">= 0"])
      s.add_development_dependency(%q<minitest>.freeze, [">= 0"])
      s.add_development_dependency(%q<minitest-reporters>.freeze, [">= 0"])
      s.add_development_dependency(%q<elasticsearch-extensions>.freeze, [">= 0"])
      s.add_development_dependency(%q<ruby-prof>.freeze, [">= 0"])
      s.add_development_dependency(%q<require-prof>.freeze, [">= 0"])
      s.add_development_dependency(%q<simplecov>.freeze, [">= 0"])
      s.add_development_dependency(%q<simplecov-rcov>.freeze, [">= 0"])
      s.add_development_dependency(%q<cane>.freeze, [">= 0"])
      s.add_development_dependency(%q<test-unit>.freeze, ["~> 2"])
    else
      s.add_dependency(%q<multi_json>.freeze, [">= 0"])
      s.add_dependency(%q<faraday>.freeze, [">= 0"])
      s.add_dependency(%q<bundler>.freeze, [">= 0"])
      s.add_dependency(%q<rake>.freeze, ["~> 11.1"])
      s.add_dependency(%q<ansi>.freeze, [">= 0"])
      s.add_dependency(%q<shoulda-context>.freeze, [">= 0"])
      s.add_dependency(%q<mocha>.freeze, [">= 0"])
      s.add_dependency(%q<yard>.freeze, [">= 0"])
      s.add_dependency(%q<pry>.freeze, [">= 0"])
      s.add_dependency(%q<curb>.freeze, [">= 0"])
      s.add_dependency(%q<patron>.freeze, [">= 0"])
      s.add_dependency(%q<typhoeus>.freeze, ["~> 0.6"])
      s.add_dependency(%q<net-http-persistent>.freeze, [">= 0"])
      s.add_dependency(%q<httpclient>.freeze, [">= 0"])
      s.add_dependency(%q<hashie>.freeze, [">= 0"])
      s.add_dependency(%q<minitest>.freeze, [">= 0"])
      s.add_dependency(%q<minitest-reporters>.freeze, [">= 0"])
      s.add_dependency(%q<elasticsearch-extensions>.freeze, [">= 0"])
      s.add_dependency(%q<ruby-prof>.freeze, [">= 0"])
      s.add_dependency(%q<require-prof>.freeze, [">= 0"])
      s.add_dependency(%q<simplecov>.freeze, [">= 0"])
      s.add_dependency(%q<simplecov-rcov>.freeze, [">= 0"])
      s.add_dependency(%q<cane>.freeze, [">= 0"])
      s.add_dependency(%q<test-unit>.freeze, ["~> 2"])
    end
  else
    s.add_dependency(%q<multi_json>.freeze, [">= 0"])
    s.add_dependency(%q<faraday>.freeze, [">= 0"])
    s.add_dependency(%q<bundler>.freeze, [">= 0"])
    s.add_dependency(%q<rake>.freeze, ["~> 11.1"])
    s.add_dependency(%q<ansi>.freeze, [">= 0"])
    s.add_dependency(%q<shoulda-context>.freeze, [">= 0"])
    s.add_dependency(%q<mocha>.freeze, [">= 0"])
    s.add_dependency(%q<yard>.freeze, [">= 0"])
    s.add_dependency(%q<pry>.freeze, [">= 0"])
    s.add_dependency(%q<curb>.freeze, [">= 0"])
    s.add_dependency(%q<patron>.freeze, [">= 0"])
    s.add_dependency(%q<typhoeus>.freeze, ["~> 0.6"])
    s.add_dependency(%q<net-http-persistent>.freeze, [">= 0"])
    s.add_dependency(%q<httpclient>.freeze, [">= 0"])
    s.add_dependency(%q<hashie>.freeze, [">= 0"])
    s.add_dependency(%q<minitest>.freeze, [">= 0"])
    s.add_dependency(%q<minitest-reporters>.freeze, [">= 0"])
    s.add_dependency(%q<elasticsearch-extensions>.freeze, [">= 0"])
    s.add_dependency(%q<ruby-prof>.freeze, [">= 0"])
    s.add_dependency(%q<require-prof>.freeze, [">= 0"])
    s.add_dependency(%q<simplecov>.freeze, [">= 0"])
    s.add_dependency(%q<simplecov-rcov>.freeze, [">= 0"])
    s.add_dependency(%q<cane>.freeze, [">= 0"])
    s.add_dependency(%q<test-unit>.freeze, ["~> 2"])
  end
end
