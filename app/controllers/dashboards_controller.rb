class DashboardsController < ApplicationController
  def show
    @tweet = Tweet.new
  end
end
