class ProfilesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  before_action :authorize_user, only: [:edit, :update, :destroy]

  def show
  end

  def edit
  end

  def update
    if @user.update(user_params)
      redirect_to profile_path, notice: "Profile successfully updated."
    else
      render :edit
    end
  end

  def destroy
    @user.destroy
    redirect_to root_path, notice: "Your account has been deleted. Goodbye!"
  end

  private

  def set_user
    @user = current_user
  end

  def authorize_user
    redirect_to root_path, alert: "You are not authorized to perform this action." unless @user == current_user
  end

  def user_params
    params.require(:user).permit(:name, :email)
  end
end
