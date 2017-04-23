class CreateFoodRecipes < ActiveRecord::Migration[5.0]
  def change
    create_table :food_recipes do |t|
      t.string :name
      t.string :origin
      t.string :preparation_time
      t.string :description
      t.text :method
      t.integer :number_of_persons
      t.string :image_url
      t.integer :category_id
      t.text :ingredients

      t.timestamps
    end
  end
end
