class Like < ActiveRecord::Base
	belongs_to :food_recipe
	belongs_to :user
end