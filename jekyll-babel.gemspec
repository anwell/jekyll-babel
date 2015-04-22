# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "jekyll-babel/version"

Gem::Specification.new do |s|
  spec.name         = "jekyll-babel"
  spec.version      = Jekyll::Babel::VERSION
  spec.authors      = ["Anwell Wang"]
  spec.email        = ["anwell@anwell.me"]
  spec.homepage     = "http://github.com/anwell/jekyll-babel"
  spec.summary      = %q{ES6 to ES5 converter for Jekyll}
  spec.description  = %q{Convert ECMAScript 6 files to ECMAScript 5 compatible files as part of your Jekyll build.}

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.filespec.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.filespec.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency('jekyll', [">= 0.10.0"])
  spec.add_runtime_dependency('babel-transpiler', [">= 0.7.0"])
end
