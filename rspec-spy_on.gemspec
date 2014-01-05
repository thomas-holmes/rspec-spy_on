# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rspec/spy_on/version'

Gem::Specification.new do |spec|
  spec.name          = "rspec-spy_on"
  spec.version       = Rspec::SpyOn::VERSION
  spec.authors       = ["Thomas Holmes"]
  spec.email         = ["thomas@holmes.io"]
  spec.description   = %q{Use test spies more easily with the `spy_on` method}
  spec.summary       = spec.description
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "rspec", ">= 2.14"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "simplecov"
  spec.add_runtime_dependency "coveralls"
end
