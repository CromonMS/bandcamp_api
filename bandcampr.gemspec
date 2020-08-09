# encoding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rbandcamp/version'

Gem::Specification.new do |gem|
  gem.name          = 'RBandcamp'
  gem.version       = RBandcamp::VERSION
  gem.authors       = ['Cromon MS']
  gem.email         = ['admin@cromon.co.uk']
  gem.description   = 'Access the Bandcamp API'
  gem.summary       = 'A library for communicating with the Bandcamp.com api and wrapping the various types of data to make it easier to work with.'
  gem.homepage      = "http://rubygems.org/gems/rbandcamp"
  gem.license       = 'MIT'

  gem.files         = `git ls-files -z`.split("\x0")
  # gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(/^spec\//)
  gem.require_paths = ['lib']

  gem.add_dependency 'omniauth-oauth2', '~> 1.5.0'
  gem.add_dependency 'rest-client', '~> 2.0.2'
  gem.add_dependency 'addressable', '~> 2.5.2'

  gem.add_development_dependency 'bundler'
  gem.add_development_dependency 'webmock'
  gem.add_development_dependency 'rake'
  gem.add_development_dependency 'rspec'
  gem.add_development_dependency 'yard'
  gem.add_development_dependency 'vcr', '~> 3.0'

  gem.required_ruby_version = '>= 2.0.0'
end
