class ThemesController < ApplicationController

  def index
    @themes = Theme.all
  end

  def show

    @theme = Theme.find(params[:id])
    @tips = Tip.all
    @content = RedditScraper.new(@theme.id).scrape

  end

end
