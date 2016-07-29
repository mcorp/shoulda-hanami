# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'shoulda/hanami/version'

Gem::Specification.new do |spec|
  spec.name          = 'shoulda-hanami'
  spec.version       = Shoulda::Hanami::VERSION
  spec.authors       = ['Leonardo Saraiva']
  spec.email         = ['vyper@maneh.org']

  spec.summary       = %q{Making tests easy on the fingers and eyes, but on hanami.}
  spec.homepage      = 'https://github.com/mcorp/shoulda-hanami'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.10'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.4.0'

  spec.add_dependency 'hanami-validations', '~> 0.6.0'
end
