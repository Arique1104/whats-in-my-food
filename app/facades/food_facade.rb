class FoodFacade
  def self.find_food_with(query)
    json = FoodService.find_food_with(query)
    @foods = json[:foods].map do |food_data|
      Food.new(food_data)
    end
    @foods
  end

end
