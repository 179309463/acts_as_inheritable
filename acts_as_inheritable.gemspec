# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'acts_as_inheritable/version'

Gem::Specification.new do |spec|
  spec.name          = "acts_as_inheritable"
  spec.version       = ActsAsInheritable::VERSION
  spec.authors       = ["Esteban Arango Medina"]
  spec.email         = ["marranoparael31@gmail.com"]
  spec.summary       = %q{Inheritable behavior for models with parent.}
  spec.description   = %q{}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "factory_girl", "~> 4.5.0"
  spec.add_development_dependency "faker"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "rspec-nc"
  spec.add_development_dependency "sqlite3", "~> 1.3"
  spec.add_development_dependency "nyan-cat-formatter"

  spec.add_dependency "activesupport", "~> 4"
  spec.add_dependency "activerecord", "~> 4", ">= 4.1.2"

end
