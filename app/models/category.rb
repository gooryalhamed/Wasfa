class Category < ActiveRecord::Base
	has_many :food_recipes
end
