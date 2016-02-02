class WelcomeController < ApplicationController

  def index
    @themes = Theme.all
  end

  def mission
  end

  def support
  end

  def request_form
  end

  def careers
  end


end
