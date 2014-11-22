class UsersController < ApplicationController
  skip_before_action :require_login, only: [:new, :create]
  before_action :validate_user, only: [:edit, :update]

  def update
    user = current_user.update(user_params)
    if user
      flash[:notice] = "Update Successful"
    else
      flash[:notice] = "Update Failed"
    end
    redirect_to "/"
  end

  def new
    @user = User.new
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

