class RenameProfileImageId < ActiveRecord::Migration[5.0]
  def change
  	rename_column :food_recipes, :profile_image_id, :image
  end
end
