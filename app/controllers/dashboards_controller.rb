class DashboardsController < ApplicationController
  def show
    @tweet = Tweet.new
    @tweets = Tweet.all
  end
end
