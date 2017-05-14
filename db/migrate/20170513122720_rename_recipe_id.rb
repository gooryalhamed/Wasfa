class RenameRecipeId < ActiveRecord::Migration[5.0]
  def change
  	rename_column :likes, :recipe_id, :food_recipe_id
  end
end
