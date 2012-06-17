# ImageScraper

A simple scraper for web images.

## Installation

Add this line to your application's Gemfile:

    gem 'image_scraper'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install image_scraper

## Usage

```ruby

require 'image_scraper'

a = ImageScraper::Image.new("./img")

a.gather(pages: 1, selector: ".PinImage img") do |parser, page|
  parser.parse(open("http://pinterest.com/search/?q=icecreams&page=#{page + 1}"))
end

a.download

```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
