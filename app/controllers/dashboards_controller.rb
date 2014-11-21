class DashboardsController < ApplicationController
  def show
    @tweet = Tweet.new
    @tweets = Tweet.all
    @search = Search.new
  end
end
