class FoodsController < ApplicationController
  def index
    @foods = FoodFacade.find_food_with(food_params[:q])
    # require "pry"; binding.pry
  end

  private
  def food_params
    params.permit(:q)
  end

end
