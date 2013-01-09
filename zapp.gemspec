# -*- encoding: utf-8 -*-
require File.expand_path('../lib/zapp/version', __FILE__)
require File.expand_path('../lib/zapp/description', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Pierre Nespo"]
  gem.email         = ["pierre.nespo@gmail.com"]
  gem.description   = Zapp::DESCRIPTION
  gem.summary       = %q{Zendesk apps command line generator.}
  gem.homepage      = "https://github.com/pi3r/zapp"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "zapp"
  gem.require_paths = ["lib"]
  gem.version       = Zapp::VERSION

  gem.add_development_dependency 'rake'
  gem.add_development_dependency 'rspec'
  gem.add_development_dependency 'pry'

  gem.add_runtime_dependency 'commander'
end
