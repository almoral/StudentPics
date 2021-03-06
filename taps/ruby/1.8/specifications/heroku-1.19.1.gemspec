# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{heroku}
  s.version = "1.19.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Heroku"]
  s.date = %q{2011-03-23}
  s.default_executable = %q{heroku}
  s.description = %q{Client library and command-line tool to manage and deploy Rails apps on Heroku.}
  s.email = %q{support@heroku.com}
  s.executables = ["heroku"]
  s.files = ["bin/heroku"]
  s.homepage = %q{http://heroku.com/}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.6.2}
  s.summary = %q{Client library and CLI to deploy Rails apps on Heroku.}

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<fakefs>, ["~> 0.3.1"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<rspec>, ["~> 1.3.0"])
      s.add_development_dependency(%q<taps>, ["~> 0.3.20"])
      s.add_development_dependency(%q<webmock>, ["~> 1.5.0"])
      s.add_runtime_dependency(%q<activesupport>, [">= 2.1.0"])
      s.add_runtime_dependency(%q<rest-client>, ["< 1.7.0", ">= 1.4.0"])
      s.add_runtime_dependency(%q<launchy>, ["~> 0.3.2"])
    else
      s.add_dependency(%q<fakefs>, ["~> 0.3.1"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<rspec>, ["~> 1.3.0"])
      s.add_dependency(%q<taps>, ["~> 0.3.20"])
      s.add_dependency(%q<webmock>, ["~> 1.5.0"])
      s.add_dependency(%q<activesupport>, [">= 2.1.0"])
      s.add_dependency(%q<rest-client>, ["< 1.7.0", ">= 1.4.0"])
      s.add_dependency(%q<launchy>, ["~> 0.3.2"])
    end
  else
    s.add_dependency(%q<fakefs>, ["~> 0.3.1"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<rspec>, ["~> 1.3.0"])
    s.add_dependency(%q<taps>, ["~> 0.3.20"])
    s.add_dependency(%q<webmock>, ["~> 1.5.0"])
    s.add_dependency(%q<activesupport>, [">= 2.1.0"])
    s.add_dependency(%q<rest-client>, ["< 1.7.0", ">= 1.4.0"])
    s.add_dependency(%q<launchy>, ["~> 0.3.2"])
  end
end
