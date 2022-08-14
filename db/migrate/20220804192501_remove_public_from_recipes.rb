class RemovePublicFromRecipes < ActiveRecord::Migration[7.0]
  def change
    remove_column :recipes, :public, :boolean
  end
end
