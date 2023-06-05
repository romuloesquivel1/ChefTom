class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    sign_out 
    redirect_to root_path, notice: "Your account has been deleted."
  end
end
