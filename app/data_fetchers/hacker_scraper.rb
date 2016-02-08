require 'nokogiri'
require 'open-uri'
require 'pry'


class HackerScraper 

	attr_accessor :html, :url

	def initialize
		url = "https://news.ycombinator.com/"
		@html = Nokogiri::HTML(open(url))
	end

	def scrape
		content_hash = {}
		content_array = self.html.css(".title")
		content_array.each_with_index do |post, index|
				link = post.children[1].attributes["href"].value unless post.children[1].nil?
				title = post.children[1].children.text unless post.children[1].nil?
				content_hash[title] = link unless title == nil
		end
	end
end
