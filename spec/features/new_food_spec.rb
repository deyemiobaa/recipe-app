require 'rails_helper'

RSpec.describe 'New food page', type: :feature do
  before :each do
    @user = FactoryBot.create(:user)
    sign_in @user
  end
  it 'has the link to create a new food' do
    visit foods_path
    expect(page).to have_link 'New food'
  end
  it 'can create a new food' do
    visit new_food_path
    fill_in 'Name', with: 'Pizza'
    fill_in 'Measurement unit', with: 'slice'
    fill_in 'Price', with: 10
    fill_in 'Quantity', with: 1
    click_button 'Add Food'
    expect(page).to have_content 'Food was successfully created.'
  end
end
