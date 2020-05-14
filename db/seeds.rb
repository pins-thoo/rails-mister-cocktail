require 'json'
require 'open-uri'

url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
ingredients_serialized = open(url).read
ingredients = JSON.parse(ingredients_serialized)

puts "Create ingredients"

ingredients['drinks'].each do |ingredient|
  element = Ingredient.create(name: ingredient['strIngredient1'])
end

puts 'Seeds created!'
