# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
recipe1 = FoodRecipe.create(name:"lemon cack",origin:"global",preparation_time:"15m",description:"Lemon cack is so delecious",method:"first, break eggs and mix them well then add sugar. Then mix dry ingredients.",number_of_persons:"5",ingredients:"1/2k flour,3 eggs,1 glass sugar,vanilla,backing powder,lemon juice",image_url:"./recipe.jpg")