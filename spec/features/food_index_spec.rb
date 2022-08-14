require 'rails_helper'

RSpec.describe 'Food index page', type: :feature do
  before :each do
    @user = FactoryBot.create(:user)
    @food = Food.create(name: 'Pizza', measurement_unit: 'slice', price: '10', quantity: '1', user: @user)
    sign_in @user
  end

  it 'displays the food name' do
    visit foods_path
    expect(page).to have_content @food.name
  end

  it 'has the sign out link' do
    visit foods_path
    expect(page).to have_link 'Sign out'
  end

  it 'has the link to create a new food' do
    visit foods_path
    expect(page).to have_link 'New food'
  end

  it 'can delete a food' do
    visit foods_path
    expect(page).to have_button 'Delete'
    click_button 'Delete'
    expect(page).to have_content 'Food was successfully deleted.'
  end
end
