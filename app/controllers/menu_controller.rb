class MenusController < ApplicationController
  def handle_menu_item_click
    meal = Meal.find(params[:meal_id])
    user = current_user

    if params[:like]
      user.likes << meal
    elsif params[:dislike]
      user.dislikes << meal
    end

    redirect_to user_profile_path(user) # Replace with the appropriate path to the user profile page
  end
end
