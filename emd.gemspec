# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'emd/version'

Gem::Specification.new do |spec|
  spec.name          = "emd"
  spec.version       = Emd::VERSION
  spec.authors       = ["dan"]
  spec.email         = ["danbickford007@yahoo.com"]
  spec.summary       = %q{}
  spec.description   = %q{}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "3.2.0"
  spec.add_dependency "github-markup", "1.3.3"
  spec.add_dependency "github-markdown", "0.6.8"
  spec.add_dependency "parslet", "1.7.0"
end
