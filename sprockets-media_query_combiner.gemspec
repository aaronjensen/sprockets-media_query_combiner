# -*- encoding: utf-8 -*-
require File.expand_path('../lib/sprockets/media_query_combiner/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Aaron Jensen"]
  gem.email         = ["aaronjensen@gmail.com"]
  gem.summary       = %q{Automatically combine media queries}
  gem.description   = %q{Sprockets bundle processor to combine all like media queries}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "sprockets-media_query_combiner"
  gem.require_paths = ["lib"]
  gem.version       = Sprockets::MediaQueryCombiner::VERSION

  gem.required_ruby_version = '>= 1.9.2'

  gem.add_runtime_dependency "sprockets", "~>2.1"

  gem.add_development_dependency "rspec"
  gem.add_development_dependency "rake"
end
