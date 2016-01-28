class TopicsController < ApplicationController

  def index
    binding.pry
    @topics = Topic.all
  end

  def show

    @topic = Topic.find(params[:id])
  end

end
