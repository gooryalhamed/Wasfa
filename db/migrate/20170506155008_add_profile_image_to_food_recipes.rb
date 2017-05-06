class AddProfileImageToFoodRecipes < ActiveRecord::Migration[5.0]
  def change
    add_column :food_recipes, :profile_image_id, :string
  end
end
