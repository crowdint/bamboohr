# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'bamboohr/version'

Gem::Specification.new do |spec|
  spec.name          = "bamboohr"
  spec.version       = BambooHR::VERSION
  spec.authors       = ["David Padilla"]
  spec.email         = ["david@crowdint.com"]
  spec.summary       = %q{Consume BambooHR's API}
  spec.description   = %q{Consume BambooHR's API}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "httparty", "~> 0.13.0"

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rr", "~> 1.1.2"
  spec.add_development_dependency "cucumber", "~> 1.3.12"
  spec.add_development_dependency "vcr", "~> 2.8.0"
  spec.add_development_dependency "webmock"
end
