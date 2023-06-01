class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    puts user_params
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      flash[:notice] = 'Registration successful!'
      redirect_to root_path
    else
      flash.now[:alert] = 'Registration failed. Please try again.'
      render :new
    end
  end

  def show
    @user = User.find(params[:id])
  end

  private

  def user_params
    params.require(:user).permit(:username, :password, :password_confirmation)
  end
end
