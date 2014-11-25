class DashboardsController < ApplicationController
  def show
    @tweet = Tweet.new
    @tweets = current_user.timeline
    @search = Search.new
    @possible_friends = current_user.possible_friends
  end
end
