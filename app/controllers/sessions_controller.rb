class SessionsController < ApplicationController
  def create
    user = User.find_by(email: params[:email])
    if user&.authenticate(params[:password])
      auth_token = user.generate_auth_token
      render json: { auth_token: auth_token }
    else
      render json: { error: 'Invalid email or password' }, status: :unauthorized
    end
  end
end
