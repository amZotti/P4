class TweetsController < ApplicationController
  def create
    current_user.tweets.create(tweet_params)
    @tweet = Tweet.new
    redirect_to "/"
  end

  private

  def tweet_params
    params.require(:tweet).permit(:message, :recipient_id)
  end
end
