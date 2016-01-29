class ThemesController < ApplicationController

  def index
    binding.pry
    @themes = Theme.all
  end

  def show

    @content = RedditScraper.new.scrape
    @theme = Theme.find(params[:id])

  end

end
