class ProfilesController < ApplicationController
  def show
    @user = current_user
  end

  def destroy
    @user = current_user
    @user.destroy
    redirect_to root_path, notice: "Your account has been deleted successfully."
  end
end
