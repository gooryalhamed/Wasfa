class FoodRecipe < ActiveRecord::Base
	belongs_to :category
	def category_name
		self.category.name
	end
	def self.search(keyword)
		FoodRecipe.where('name LIKE ?',"%#{keyword}%")
	end
end
