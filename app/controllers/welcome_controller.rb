class WelcomeController < ApplicationController

  def index
    @themes = Theme.all
  end

end
