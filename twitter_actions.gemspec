# -*- encoding: utf-8 -*-
# stub: twitter_actions 0.2.2 ruby lib

Gem::Specification.new do |s|
  s.name = "twitter_actions"
  s.version = "0.2.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.metadata = { "allowed_push_host" => "TODO: Set to 'http://mygemserver.com'" } if s.respond_to? :metadata=
  s.require_paths = ["lib"]
  s.authors = ["kazuooooo"]
  s.bindir = "exe"
  s.date = "2017-06-01"
  s.description = "Twitter Rest API gem thin wrapper"
  s.email = ["matsumotokazuya7@gmail.com"]
  s.files = [".gitignore", ".rspec", ".travis.yml", "Gemfile", "LICENSE.txt", "README.md", "Rakefile", "bin/console", "bin/setup", "lib/twitter_actions.rb", "lib/twitter_actions/base.rb", "lib/twitter_actions/client.rb", "lib/twitter_actions/config.rb", "lib/twitter_actions/follow.rb", "lib/twitter_actions/search.rb", "lib/twitter_actions/tweet.rb", "lib/twitter_actions/version.rb", "twitter_actions.gemspec"]
  s.homepage = "https://github.com/kazuooooo/twitter_actions"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.5.1"
  s.summary = "Twitter Rest API gem thin wrapper"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>, ["~> 1.13"])
      s.add_development_dependency(%q<rake>, ["~> 10.0"])
      s.add_development_dependency(%q<rspec>, ["~> 3.0"])
      s.add_development_dependency(%q<guard>, ["~> 2.14.0"])
      s.add_development_dependency(%q<guard-rspec>, ["~> 4.7.3"])
      s.add_development_dependency(%q<simplecov>, ["~> 0.12.0"])
      s.add_runtime_dependency(%q<twitter>, ["~> 6.1.0"])
    else
      s.add_dependency(%q<bundler>, ["~> 1.13"])
      s.add_dependency(%q<rake>, ["~> 10.0"])
      s.add_dependency(%q<rspec>, ["~> 3.0"])
      s.add_dependency(%q<guard>, ["~> 2.14.0"])
      s.add_dependency(%q<guard-rspec>, ["~> 4.7.3"])
      s.add_dependency(%q<simplecov>, ["~> 0.12.0"])
      s.add_dependency(%q<twitter>, ["~> 6.1.0"])
    end
  else
    s.add_dependency(%q<bundler>, ["~> 1.13"])
    s.add_dependency(%q<rake>, ["~> 10.0"])
    s.add_dependency(%q<rspec>, ["~> 3.0"])
    s.add_dependency(%q<guard>, ["~> 2.14.0"])
    s.add_dependency(%q<guard-rspec>, ["~> 4.7.3"])
    s.add_dependency(%q<simplecov>, ["~> 0.12.0"])
    s.add_dependency(%q<twitter>, ["~> 6.1.0"])
  end
end
