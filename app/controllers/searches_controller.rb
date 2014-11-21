class SearchesController < ApplicationController
  def create
    @search = Search.new(search_params)
    @users = User.where(email: @search.query)
    render "show"
  end

  private

  def search_params
    params.require(:search).permit(:query)
  end
end
