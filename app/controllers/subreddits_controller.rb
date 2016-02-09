class SubredditsController < ApplicationController
	def index
		@user = User.new
		@subreddits = Subreddit.all
	end
end
