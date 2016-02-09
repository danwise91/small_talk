class WelcomeController < ApplicationController

  def index
    @themes = Theme.all
    @user = User.new
  end

  def mission
    @user = User.new
  end

  def support
    @user = User.new
  end

  def request_form
    @user = User.new
  end

  def careers
    @user = User.new
  end


end
