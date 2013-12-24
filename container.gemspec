# -*- encoding: utf-8 -*-

require File.expand_path('../lib/container/version', __FILE__)

Gem::Specification.new do |gem|
  gem.name          = "container"
  gem.version       = Container::VERSION
  gem.summary       = %q{Stop using singletons and globals}
  gem.description   = %q{Stop using singletons and globals}
  gem.license       = "MIT"
  gem.authors       = ["Rasheed Abdul-Aziz"]
  gem.email         = "squeedee@gmail.com"
  gem.homepage      = "http://github.com/squeedee/container"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ['lib']

  gem.add_development_dependency 'bundler', '~> 1.0'
  gem.add_development_dependency 'rake', '~> 0.8'
  gem.add_development_dependency 'rdoc', '~> 3.0'
  gem.add_development_dependency 'rspec', '~> 2.4'
end
