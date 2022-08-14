require 'rails_helper'

RSpec.describe 'New ingredient', type: :feature do
  before(:each) do
    @user = FactoryBot.create(:user)
    sign_in @user
    @recipe = FactoryBot.create(:recipe, user: @user)
    @food = FactoryBot.create(:food, user: @user)
  end

  it 'has the link to create a new ingredient' do
    visit recipe_path(@recipe)
    expect(page).to have_link 'Add Ingredient'
  end

  it 'can create a new ingredient' do
    visit recipe_ingredients_path(@recipe)
    fill_in 'Quantity', with: 1
    select @food.name
    click_button 'Add ingredient'
    expect(page).to have_content 'Ingredient was successfully added.'
  end
end
