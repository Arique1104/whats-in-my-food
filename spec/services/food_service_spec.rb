require 'rails_helper'

describe FoodService do
  it 'returns food data' do
    results = FoodService.find_food_with('cabbage')
    expect(results).to be_a Hash

    food_data = results[:foods].first
    expect(food_data).to have_key :description
    expect(food_data[:description]).to eq('Cabbage, creamed')

    expect(food_data).to have_key :foodCode
    expect(food_data[:foodCode]).to eq("75407010")

    expect(food_data).to have_key :dataType
    expect(food_data[:dataType]).to eq("Survey (FNDDS)")

    expect(food_data).to have_key :foodNutrients
    expect(food_data[:foodNutrients].class).to eq(Array)
    expect(food_data[:foodNutrients].count).to eq(65)

  end
end
