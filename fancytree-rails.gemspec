# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'fancytree/rails/version'

Gem::Specification.new do |spec|
  spec.name          = "fancytree-rails"
  spec.version       = Fancytree::Rails::VERSION
  spec.authors       = ["Lukas Svoboda"]
  spec.email         = ["lukas.svoboda@gmail.com"]
  spec.description   = %q{FancyTree integration for Rails}
  spec.summary       = %q{FancyTree integration for Rails}
  spec.homepage      = "https://github.com/lksv/fancytree-rails"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"

  spec.add_dependency "railties", ">= 3.2.0"
  spec.add_dependency "jquery-rails"
  spec.add_dependency 'jquery-ui-rails'
end
