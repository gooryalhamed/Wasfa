class SetDefaultValueToProfileImg < ActiveRecord::Migration[5.0]
  def change
  	change_column :users, :profile_img, :string, :default=>"user.png"
  end
end
