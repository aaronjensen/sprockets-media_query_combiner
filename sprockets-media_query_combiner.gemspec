# -*- encoding: utf-8 -*-
require File.expand_path('../lib/sprockets/media_query_combiner/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Aaron Jensen"]
  gem.email         = ["aaronjensen@gmail.com"]
  gem.description   = %q{TODO: Write a gem description}
  gem.summary       = %q{TODO: Write a gem summary}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "sprockets-media_query_combiner"
  gem.require_paths = ["lib"]
  gem.version       = Sprockets::MediaQueryCombiner::VERSION

  gem.add_runtime_dependency "sprockets", "~>2.1.3"

  gem.add_development_dependency "rspec"
end
