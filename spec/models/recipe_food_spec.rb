require 'rails_helper'

RSpec.describe RecipeFood, type: :model do
  before :each do
    @user = User.create(name: 'John Doe', email: 'test@mail.com', password: 'password')
    @food = Food.create(name: 'Pizza', measurement_unit: 'g', price: 10, quantity: 100, user: @user)
    @recipe = Recipe.create(name: 'Pizza', preparation_time: 10, cooking_time: 20, description: 'Pizza', public: true,
                            user: @user)
    @recipe_food = RecipeFood.create(quantity: 100, food: @food, recipe: @recipe)
  end

  it 'is valid with valid attributes' do
    expect(@recipe_food).to be_valid
  end

  it 'can return the food' do
    expect(@recipe_food.food).to eq(@food)
  end

  it 'can return the recipe' do
    expect(@recipe_food.recipe).to eq(@recipe)
  end
end
