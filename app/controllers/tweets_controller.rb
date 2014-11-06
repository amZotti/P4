class TweetsController < ApplicationController
  def create
    current_user.tweets.create(tweet_params)
    @tweet = Tweet.new
    render "dashboards/show"
  end

  private

  def tweet_params
    params.require(:tweet).permit(:message)
  end
end
