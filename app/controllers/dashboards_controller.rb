class DashboardsController < ApplicationController
  def show
    @tweet = Tweet.new
    @tweets = current_user.timeline
    @search = Search.new
  end
end
