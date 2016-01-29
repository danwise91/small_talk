require 'nokogiri'
require 'open-uri'
require 'pry'

class RedditScraper
	attr_accessor :html, :url

  def initialize(theme_id)
  	# we will update this dynamically later with initialize taking a url argument that depends on what kind of party the user is going to. For now we'll just use TIL sub
    case theme_id
	    # don't forget to add case statements whenever there's a new theme
	    when 1
	    	# hipster
	    	url = Subreddit.where(theme_id: 1).sample.url
	    when 2
	    	# goth
	    	url = Subreddit.where(theme_id: 2).sample.url
	    when 3
	    	# gamer
	    	url = Subreddit.where(theme_id: 3).sample.url
	    when 4
	    	# pretentious
	    	url = Subreddit.where(theme_id: 4).sample.url
	    when 5
	    	# classy_drinkers
	    	url = Subreddit.where(theme_id: 5).sample.url
	    when 6
	    	# sports_fans
	    	url = Subreddit.where(theme_id: 6).sample.url
	    when 7
	    	# bored_housewives
	    	url = Subreddit.where(theme_id: 7).sample.url
	    when 8
	    	# history_nerds
	    	url = Subreddit.where(theme_id: 8).sample.url
	    when 9
	    	# science_nerds
	    	url = Subreddit.where(theme_id: 9).sample.url
	    when 10
	    	# general
	    	url = Subreddit.where(theme_id: 10).sample.url
	    end


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
