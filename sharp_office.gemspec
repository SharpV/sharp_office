# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sharp_office/version'

Gem::Specification.new do |gem|
  gem.name          = "sharp_office_bruce"
  gem.version       = SharpOffice::VERSION
  gem.authors       = ["heimirror"]
  gem.email         = ["heimirror@126.com"]
  gem.description   = %q{Convert office document to pdf and swf}
  gem.summary       = %q{Convert office document to pdf and swf}
  gem.homepage      = "https://github.com/brucewu/sharp_office"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency "mini_magick"
  gem.add_development_dependency "rspec", "~> 2.13.0"
  
end
