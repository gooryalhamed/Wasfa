class Comment < ActiveRecord::Base
	belongs_to :user
	belongs_to :food_recipe
end