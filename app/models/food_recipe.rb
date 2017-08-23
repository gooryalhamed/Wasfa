class FoodRecipe < ActiveRecord::Base
	belongs_to :category
	has_many :likes
	has_many :users, :through => :likes
	has_many :comments
	has_many :users, :through => :comments

	#validates :name, :category_id, :method, :ingredients, :image, presence: true
	def category_name
		self.category.name
	end
	def self.search(keyword)
		FoodRecipe.where('name LIKE ?',"%#{keyword}%")
	end
end
