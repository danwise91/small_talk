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
  	binding.pry
  	self.html.css(".title").each do |post|
  		puts post.text
  	end
  end
end

scraper = RedditScraper.new
scraper.scrape