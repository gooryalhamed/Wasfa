class AddNumofLikesToFoodRecipes < ActiveRecord::Migration[5.0]
  def change
    add_column :food_recipes, :numof_likes, :integer
  end
end
