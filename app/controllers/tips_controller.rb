class TipsController < ApplicationController
  def index
    @tips = Tip.all
    @user = User.new
  end
end
