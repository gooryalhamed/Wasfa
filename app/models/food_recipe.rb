class FoodRecipe < ActiveRecord::Base
	belongs_to :category
	def category_name
		self.category.name
	end
	attachment :profile_image
end
