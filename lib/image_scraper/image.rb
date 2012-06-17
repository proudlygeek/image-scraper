require 'open-uri'
require 'nokogiri'
require 'digest'

module ImageScraper
	class Image

		def initialize(folder)
			@results = []
			@folder = folder
		end

		def download

			Dir.mkdir(File.join(@folder)) if !Dir.exists? @folder

			@results.each do |link|
				extension = link.split(/\./).last

				open("#{File.join(@folder)}/#{Digest::MD5.hexdigest(link.to_s)[1..5]}.#{extension}", 'wb') do |imageFile|
					imageFile << open(link).read
				end
				puts "downloaded " + link.to_s
			end
		end

		def gather(opts={})

			# Set defaults
			{:pages => 5, :selector => "img"}.merge(opts)

			opts[:pages].times do |page|
				doc = yield Nokogiri::HTML, page

				doc.css(opts[:selector]).each do |img|
			    @results << img.attr("src")
			  end
			end
		end		
	end
end