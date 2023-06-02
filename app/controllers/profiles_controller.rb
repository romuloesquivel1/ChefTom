class ProfilesController < ApplicationController
      def show
    @user = current_user 
    render 'profiles/show'
  end
end
