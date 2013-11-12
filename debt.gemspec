# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'debt/version'

Gem::Specification.new do |spec|
  spec.name          = "debt"
  spec.version       = Debt::VERSION
  spec.authors       = ["Sebastien Saunier"]
  spec.email         = ["seb@saunier.me"]
  spec.summary       = %q{Quickly assess the complexity and technical debt of a rails app}
  spec.description   = %q{
debt is a utility to be run in your rails app root directory to quickly dive into it.
It comes handy when you get your hands on a legacy rails application and you want to
understand how much technical debt you inherit.
  }
  spec.homepage      = "https://github.com/ssaunier/debt"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "code_metrics", "~> 0.1.2"

  spec.add_development_dependency "bundler", "~> 1.5.0.rc1"
  spec.add_development_dependency "rake"
end
