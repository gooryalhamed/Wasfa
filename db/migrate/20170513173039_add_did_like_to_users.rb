class AddDidLikeToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :did_like, :boolean, :default=> false
  end
end
