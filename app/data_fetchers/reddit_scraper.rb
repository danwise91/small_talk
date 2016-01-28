require 'nokogiri'
require 'open-uri'
require 'pry'

class RedditScraper
	attr_accessor :html


  def initialize(url)
    @url = "https://www.reddit.com"
    begin
      file = open(url, :allow_redirections => :all)
      doc = Nokogiri::HTML(file) do
        @html = Nokogiri::HTML(open(url, :allow_redirections => :all))
      end
    rescue OpenURI::HTTPError => e 
      if e.message == "404 Not Found"
        puts "Your tag is not valid"
        DeadspinRunner.new.call
      else
        raise e
      end
    end
  end

  def scrape
  	binding.pry
  end

end