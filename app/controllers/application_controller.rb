class ApplicationController < ActionController::Base
  include Devise::Controllers::Helpers

  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :set_current_user

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end

  def set_current_user
    @user = current_user
  end

  def about
    # @name = "Tom"
  end

  def reservation
  end

  def mybookings
  end

  def login
  end

  def register
  end

  def home
  end
end
