# -*- encoding: utf-8 -*-
$:.push File.expand_path('../lib', __FILE__)
require 'kimoner/version'
require 'date'

Gem::Specification.new do |s|
  s.required_ruby_version = ">= #{Kimoner::RUBY_VERSION}"
  s.authors = ['kimon']
  s.date = Date.today.strftime('%Y-%m-%d')

  s.description = <<-HERE
Kimoner is a base Rails project that you can upgrade. It is used by
thoughtbot to get a jump start on a working app. Use Kimoner if you're in a
rush to build something amazing; don't use it if you like missing deadlines.
  HERE

  s.email = 'francesco.renzi@kimon.it'
  s.executables = ['kimoner']
  s.extra_rdoc_files = %w[README.md LICENSE]
  s.files = `git ls-files`.split("\n")
  s.homepage = 'https://github.com/KimonTeam/kimoner'
  s.license = 'MIT'
  s.name = 'kimoner'
  s.rdoc_options = ['--charset=UTF-8']
  s.require_paths = ['lib']
  s.summary = "Generate a Rails app following Kimon best practices. Forked from thoughtbot/suspenders"
  s.test_files = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.version = Kimoner::VERSION

  s.add_dependency 'bitters', '~> 1.5'
  s.add_dependency 'bundler', '~> 1.3'
  s.add_dependency 'rails', Kimoner::RAILS_VERSION

  s.add_development_dependency 'rspec', '~> 3.2'
end
