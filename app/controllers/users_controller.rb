class UsersController < ApplicationController
  skip_before_action :require_login, only: [:new, :create]
  before_action :validate_user, only: [:edit, :update]

  def update
    current_user.update(user_params)
    if current_user.errors.empty?
      flash[:notice] = "Update Successful"
      redirect_to "/"
    else
      flash[:notice] = "Update Failed"
      render :edit
    end
  end

  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
    @tweet = Tweet.new
    @tweets = @user.tweets
  end

  def edit

  end

  def create
    @user = sign_up(user_params)

    if @user.valid?
      sign_in(@user)
      redirect_to "/"
    else
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :password,
                                 :location, :decomposing,
                                 :limbs_missing, :url)
  end

  def validate_user
    redirect_to "/" unless  current_user.id.to_s == params[:id]
  end
end

