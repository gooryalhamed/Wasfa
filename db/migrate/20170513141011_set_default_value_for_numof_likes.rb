class SetDefaultValueForNumofLikes < ActiveRecord::Migration[5.0]
  def change
  	change_column :food_recipes, :numof_likes, :integer, :default => 0
  end
end
