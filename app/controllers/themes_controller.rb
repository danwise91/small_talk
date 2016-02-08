class ThemesController < ApplicationController

  def index
    @themes = Theme.all
  end

  def show
    @theme = Theme.find(params[:id])
    @tips = Tip.all
    
    if @theme.id == 1
      @content = HackerScraper.new.scrape
    else
      @content = RedditScraper.new(@theme.id).scrape
    end

    respond_to do |format|
      format.js { }
      format.html { }
    end
  end

  def refresh
    @tips = Tip.all

    @theme = Theme.find(params[:id])
    if @theme.id == 1
      @content = HackerScraper.new.scrape
    else
      @content = RedditScraper.new(@theme.id).scrape
    end

  end
end
