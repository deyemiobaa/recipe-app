require 'rails_helper'

RSpec.describe 'recipes/new', type: :view do
  before(:each) do
    assign(:recipe, Recipe.new(
                      name: 'MyString',
                      description: 'MyText',
                      public: false
                    ))
  end

  it 'renders new recipe form' do
    render

    assert_select 'form[action=?][method=?]', recipes_path, 'post' do
      assert_select 'input[name=?]', 'recipe[name]'

      assert_select 'textarea[name=?]', 'recipe[description]'

      assert_select 'input[name=?]', 'recipe[public]'
    end
  end
end
