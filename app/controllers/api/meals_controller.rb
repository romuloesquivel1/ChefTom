class Api::MealsController < ApplicationController
  def index
    @meals = Meal.all
    render json: @meals, only: [:name, :category, :description, :price]
  end
end
