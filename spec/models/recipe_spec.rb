require 'rails_helper'

RSpec.describe Recipe, type: :model do
  before :each do
    @user = User.create(name: 'Review Tester', email: 'tester@mail.com', password: 'password')
    @recipe = Recipe.create(name: 'Bread', preparation_time: 1.0, cooking_time: 30.0,
                            description: 'Light great texture. Flour yeast sugar.', public: true, user: @user)
  end

  it 'is valid with valid attributes' do
    expect(@recipe).to be_valid
  end

  it 'must include name' do
    @recipe.name = nil
    expect(@recipe).to_not be_valid
  end

  it 'receives public status' do
    @recipe.public = true
    expect(@recipe).to be_valid
  end
end
