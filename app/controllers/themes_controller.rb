class ThemesController < ApplicationController

  def index
    binding.pry
    @themes = Theme.all
  end

  def show

    @theme = Theme.find(params[:id])
    @content = RedditScraper.new(@theme.id).scrape

  end

end
