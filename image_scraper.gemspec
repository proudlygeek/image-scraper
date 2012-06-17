# -*- encoding: utf-8 -*-
require File.expand_path('../lib/image_scraper/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Gianluca Bargelli"]
  gem.email         = ["g.bargelli@gmail.com"]
  gem.description   = %q{A simple web image scraper}
  gem.summary       = %q{}
  gem.homepage      = "http://www.github.com/proudlygeek/image-scraper"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "image_scraper"
  gem.require_paths = ["lib"]
  gem.version       = ImageScraper::VERSION
end
