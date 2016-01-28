require 'nokogiri'
require 'open-uri'
require 'pry'

class RedditScraper
	attr_accessor :html, :url


  def initialize
  	# we will update this dynamically later with initialize taking a url argument that depends on what kind of party the user is going to. For now we'll just use TIL sub
    url = "https://www.reddit.com/r/todayilearned"
    file = open(url)
    doc = Nokogiri::HTML(file)
    @html = Nokogiri::HTML(open(url))
  end

  def scrape
  	content_hash = {}

  	# this is very specific to reddit!!


  	self.html.css(".title").each_with_index do |post, index|
  		if post.name == "p" && index > 3
	  		link = post.children[0].attributes["href"].value
	  		title = post.children[0].text
	  		content_hash[title] = link
	  	end

  	end
		content_hash
  end
end
