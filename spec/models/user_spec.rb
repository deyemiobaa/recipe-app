require 'rails_helper'

RSpec.describe User, type: :model do
  before :each do
    @user = User.create(name: 'Review Tester', email: 'tester@mail.com', password: 'password')
  end

  it 'is valid with valid attributes' do
    expect(@user).to be_valid
  end

  it 'must include user name' do
    @user.name = nil
    expect(@user).to_not be_valid
  end
end
