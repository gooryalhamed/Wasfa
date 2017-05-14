class CreateLikes < ActiveRecord::Migration[5.0]
  def change
    create_table :likes do |t|
      t.integer :recipe_id
      t.integer :user_id
    end
  end
end
