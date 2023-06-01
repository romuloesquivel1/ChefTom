class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by(username: params[:session][:username])
    if @user && @user.authenticate(params[:session][:password])
      session[:user_id] = @user.id
      flash[:notice] = "Hello, #{@user.username}! You have successfully logged in."
      redirect_to root_path
    else
      flash.now[:alert] = 'Invalid username or password. Please try again.'
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:notice] = 'You have been logged out.'
    redirect_to root_path
  end
end
