class SearchesController < ApplicationController
  def create
    @users = User.where(email: params[:query])
    render "show"
  end
end
