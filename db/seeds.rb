# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'json'
require 'open-uri'

url = "https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"
data = open(url).read
cocktail = JSON.parse(data)


cocktail.values.first.each do |ingredient|
  Ingredient.create(name: ingredient.values.pop)
end

Cocktail.create(name: "Moscow Mule")
Cocktail.create(name: "Ginny Gin")
Cocktail.create(name: "Martini")

Dose.create(ingredient_id: 1, cocktail_id: 1, description: "asfdb")
Dose.create(ingredient_id: 2, cocktail_id: 1, description: "asfdb")
Dose.create(ingredient_id: 1, cocktail_id: 2, description: "asfdb")
Dose.create(ingredient_id: 3, cocktail_id: 1, description: "asfdb")
Dose.create(ingredient_id: 2, cocktail_id: 3, description: "asfdb")
