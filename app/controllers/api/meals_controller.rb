class Api::MealsController < ApplicationController
  def index
    @meals = Meal.includes(:category).all
    render json: @meals, include: { category: { only: [:name] } }, only: [:name, :description, :price]
  end
end
