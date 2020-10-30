# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rovi_api/version'

Gem::Specification.new do |spec|
  spec.name          = "rovi_api"
  spec.version       = RoviAPI::VERSION
  spec.authors       = ["Milo Winningham"]
  spec.email         = ["milo@winningham.net"]

  spec.summary       = %q{Reads music data from the Rovi API.}
  spec.homepage      = "https://github.com/quadule/rovi_api"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "faraday", "~> 1.0"
  spec.add_dependency "faraday_middleware", "~> 1.0"
  spec.add_dependency "fuzzy_match", "~> 2.1"
  spec.add_dependency "rash", ">= 0.3"
 
  spec.add_development_dependency "bundler", "~> 1.8"
  spec.add_development_dependency "dotenv"
  spec.add_development_dependency "guard-rspec", "~> 4.5"
  spec.add_development_dependency "pry-byebug"
  spec.add_development_dependency "rake", "~> 10.0"
end
