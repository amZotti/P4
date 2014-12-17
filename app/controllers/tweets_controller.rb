class TweetsController < ApplicationController
  def create
    current_user.tweets.create(tweet_params)
    @tweet = Tweet.new
    redirect_to "/"
  end

  def destroy
    @tweet = Tweet.find(params[:id]) 
    if @tweet.is_destroyable? (current_user.id)
      @tweet.destroy
    end
    redirect_to "/"
  end

  private

  def tweet_params
    params.require(:tweet).permit(:message, :recipient_id)
  end
end
