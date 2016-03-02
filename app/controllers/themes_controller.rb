class ThemesController < ApplicationController

  def index
    @themes = Theme.all
    @user = User.new
  end

  def show
    @user = User.new
    @theme = Theme.find(params[:id])
    @tips = Tip.all

    scrape_conversation_starters

    respond_to do |format|
      format.js { }
      format.html { }
    end
  end

  def refresh
    @user = User.new
    @tips = Tip.all
    @theme = Theme.find(params[:id])

    scrape_conversation_starters
  end

  def scrape_conversation_starters
    if @theme.id == 1
      @content = HackerScraper.new.scrape
      @articles = @content.to_a.sample(5).to_h
    else
      @content = RedditScraper.new(@theme.id).scrape
      @articles = @content.to_a.sample(5).to_h
    end
  end
end
