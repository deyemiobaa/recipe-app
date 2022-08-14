require 'rails_helper'

RSpec.describe Food, type: :model do
  before :each do
    @user = User.create(name: 'John Doe', email: 'test@mail.com', password: 'password')
    @food = Food.create(name: 'Pizza', measurement_unit: 'g', price: 10, quantity: 100, user: @user)
  end

  it 'is valid with valid attributes' do
    expect(@food).to be_valid
  end

  it 'is not valid without a name' do
    @food.name = nil
    expect(@food).to_not be_valid
  end
end
