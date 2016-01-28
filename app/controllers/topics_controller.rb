class TopicsController < ApplicationController

  def index
    binding.pry
    @topics = Topic.all
  end

  def show

    @content = RedditScraper.new.scrape
    @topic = Topic.find(params[:id])
    
  end

end
