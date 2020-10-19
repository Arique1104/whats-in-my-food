class Food
attr_reader :food_code,
            :description,
            :brand_owner,
            :ingredients
  def initialize(food_data)
    @food_code = food_data[:foodCode]
    @description = food_data[:description]
    @brand_owner = food_data[:dataType]
    @ingredients = food_data[:foodNutrients]
  end

end
