# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'watchwords/version'

Gem::Specification.new do |spec|
  spec.name          = "watchwords"
  spec.version       = Watchwords::VERSION
  spec.authors       = ["rukednous"]
  spec.email         = ["luke.winikates@gmail.com"]
  spec.summary = spec.description   = %q{Extremely primitive metrics for code: count the frequency of words you like or don't like}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "approvals"
end
