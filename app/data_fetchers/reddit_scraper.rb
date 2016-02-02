require 'nokogiri'
require 'open-uri'
require 'pry'

class RedditScraper
	attr_accessor :html, :url

	REDDIT_URLS = { 
		# hipster
		1 => Subreddit.where(theme_id: 1),
		# goth
		2 => Subreddit.where(theme_id: 2),
		# gamer
		3 => Subreddit.where(theme_id: 3),
		# pretentious
		4 => Subreddit.where(theme_id: 4), 
		# classy drinkers
		5 => Subreddit.where(theme_id: 5), 
		# sports fans
		6 => Subreddit.where(theme_id: 6),
		# bored housewives
		7 => Subreddit.where(theme_id: 7), 
		# history nerds
		8 => Subreddit.where(theme_id: 8), 
		# science nerds
		9 => Subreddit.where(theme_id: 9), 
		# general
		10 => Subreddit.where(theme_id: 10)
	}

  def initialize(theme_id)
  	url = REDDIT_URLS[theme_id].sample.url
    file = open(url)
    doc = Nokogiri::HTML(file)
    @html = Nokogiri::HTML(open(url))
  end

  def scrape
  	content_hash = {}

  	self.html.css(".title").each_with_index do |post, index|
  		if post.name == "p" && index > 3
	  		link = post.children[0].attributes["href"].value
	  		# binding.pry
	  		if link[0..2] == "/r/"
	  			link = link.prepend("https://www.reddit.com")
	  		end
	  		title = post.children[0].text
	  		content_hash[title] = link
	  	end

  	end
		content_hash
  end
end
