class FoodService
  def self.find_food_with(query)
    response = Faraday.get("https://api.nal.usda.gov/fdc/v1/foods/search?") do |faraday|
      faraday.params[:query] = 'sweet potatoes'
      faraday.params[:api_key] = ENV['FOOD_API_KEY']
    end
    parse = JSON.parse(response.body, symbolize_names: true)
  end

end
