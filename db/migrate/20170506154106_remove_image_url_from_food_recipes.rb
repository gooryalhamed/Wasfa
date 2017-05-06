class RemoveImageUrlFromFoodRecipes < ActiveRecord::Migration[5.0]
  def change
    remove_column :food_recipes, :image_url, :string
  end
end
