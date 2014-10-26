# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'gifmeapi/version'

Gem::Specification.new do |spec|
  spec.name          = "GifMeAPI"
  spec.version       = GifMeAPI::VERSION
  spec.authors       = ["William Mathewson"]
  spec.email         = ["wncmathewson@me.com"]
  spec.summary       = %q{A gem that wraps the GifMe API}
  spec.description   = %q{}
  spec.homepage      = "https://github.com/neanias/GifMeAPI_gem"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"

  spec.add_dependency "httparty", "~> 0.13.1"
end
