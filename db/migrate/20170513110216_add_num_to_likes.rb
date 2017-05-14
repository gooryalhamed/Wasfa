class AddNumToLikes < ActiveRecord::Migration[5.0]
  def change
    add_column :likes, :num, :integer
  end
end
