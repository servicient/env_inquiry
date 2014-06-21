# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'env_inquiry/version'

Gem::Specification.new do |spec|
  spec.name          = "env_inquiry"
  spec.version       = EnvInquiry::VERSION
  spec.authors       = ["MTL Dev", "Luke Wendling"]
  spec.email         = ["dev@mytennislessons.com"]
  spec.summary       = %q{Use dot notation to access ENV vars}
  spec.description   = %q{Use dot notation to access ENV vars. A handy companion to dotenv-* gems}
  spec.homepage      = "http://github.com/servicient/env_inquiry"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", "~> 2.14"
end
