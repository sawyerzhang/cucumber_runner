# -*- encoding: utf-8 -*-
require File.expand_path('../lib/cucumber_runner/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["sawyerzhang"]
  gem.email         = ["sawyerzhangdev@gmail.com"]
  gem.description   = %q{list cucumber scenarios names, and run them}
  gem.summary       = gem.description
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "cucumber_runner"
  gem.require_paths = ["lib"]
  gem.version       = CucumberRunner::VERSION
end
