class AddNumofCommentsToFoodRecipes < ActiveRecord::Migration[5.0]
  def change
    add_column :food_recipes, :numof_comments, :integer, :default=> 0
  end
end
