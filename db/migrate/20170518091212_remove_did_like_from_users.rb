class RemoveDidLikeFromUsers < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :did_like, :boolean
  end
end
