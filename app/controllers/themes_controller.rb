class ThemesController < ApplicationController

  def index
    @themes = Theme.all
  end

  def show
    @theme = Theme.find(params[:id])
    @tips = Tip.all
    @content = RedditScraper.new(@theme.id).scrape
    respond_to do |format|
      # binding.pry
      format.js { }
     format.html { }
    end
  end

  def refresh
    @tips = Tip.all
    @content = RedditScraper.new(params[:id].to_i).scrape
  end

end
