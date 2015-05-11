# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'awesome_translate/version'

Gem::Specification.new do |spec|
  spec.name          = "awesome_translate"
  spec.version       = AwesomeTranslate::VERSION
  spec.authors       = ["gutekk"]
  spec.email         = ["gutekk@live.com"]
  spec.summary       = %q{Ruby interface to Microsoft Translator.}
  spec.description   = %q{Ruby interface to Microsoft Translator.}
  spec.homepage      = "https://github.com/gutekk/awesome_translate"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'nokogiri'
end
