# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'
require 'json'

# url = "https://www.thecocktaildb.com/api/json/v1/1/filter.php?c=Cocktail"
# cocktail_response = open(url).read
# cocktail = JSON.parse(cocktail_response)

Cocktail.destroy_all

# cocktail["drinks"].each do |c|
#   Cocktail.create!(name: c["strDrink"])
# end

url_ingredient = "https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"
ingredient_response = open(url_ingredient).read
ingredient = JSON.parse(ingredient_response)

Ingredient.destroy_all

ingredient["drinks"].each do |i|
  Ingredient.create!(name: i["strIngredient1"])
end
