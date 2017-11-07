# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Ingredient.destroy_all
Rating.destroy_all
Recipe.destroy_all
User.destroy_all

user = User.create!(username: 'brad', email: 'brad@brad.com', password: 'brad')
user = User.create!(username: 'jon', email: 'jon@jon.com', password: 'jon')

recipe = Recipe.create!(name: 'Cereal', difficulty_level: 1, prep_time: 1, directions: "First pour ceral, than pour milk. Do not reverse this order or it's pre-crime.", user_id: 1, category: 'Main Course')
recipe = Recipe.create!(name: 'Scrabmbled Eggs', difficulty_level: 3, prep_time: 15, directions: "Crack eggs into bowl. Add Milk and mix. Pour mix into pan on stove. Continuous scramble motion with spatuala until cooked to your liking.", user_id: 2, category: 'Main Course')
recipe = Recipe.create!(name: 'Cookies', difficulty_level: 2, prep_time: 50, directions: "Place dough on pan in balls or whatever shape you want. Put in Oven on 350 for 45 mins.", user_id: 1, category: 'Dessert')
recipe = Recipe.create!(name: 'Ceasar Salad', difficulty_level: 2, prep_time: 10, directions: "Chop lettuce and place in bowl. Add chicken, dressing, cheese, crutons and mix.", user_id: 2, category: 'Salad')
recipe = Recipe.create!(name: 'Cobb Salad', difficulty_level: 2, prep_time: 10, directions: "Chop lettuce and place in bowl. Add chicken, dressing, cheese, crutons and mix.", user_id: 2, category: 'Salad')
recipe = Recipe.create!(name: 'Chopped Salad', difficulty_level: 2, prep_time: 10, directions: "Chop lettuce and place in bowl. Add chicken, dressing, cheese, crutons and mix.", user_id: 2, category: 'Salad')
recipe = Recipe.create!(name: 'House Salad', difficulty_level: 2, prep_time: 10, directions: "Chop lettuce and place in bowl. Add chicken, dressing, cheese, crutons and mix.", user_id: 2, category: 'Salad')
recipe = Recipe.create!(name: 'Chips and Guac', difficulty_level: 1, prep_time: 5, directions: "Put chips in bowl and guac in bowl next to it.", user_id: 2, category: 'Appetizer')
recipe = Recipe.create!(name: 'Cake', difficulty_level: 3, prep_time: 45, directions: "Put batter in pan and place in oven on 350 for 40 mins.", user_id: 2, category: 'Dessert')


ingredient = Ingredient.create!(item: 'Milk', amount: 1, measurement: 'cup', recipe_id: 1)
ingredient = Ingredient.create!(item: 'Milk', amount: 1, measurement: 'cup', recipe_id: 9)
ingredient = Ingredient.create!(item: 'Cake Batter', amount: 1, measurement: 'cup', recipe_id: 9)
ingredient = Ingredient.create!(item: 'Cereal', amount: 1, measurement: 'cup', recipe_id: 1)
ingredient = Ingredient.create!(item: 'Eggs', amount: 3, measurement: 'eggs', recipe_id: 2)
ingredient = Ingredient.create!(item: 'Milk', amount: 1, measurement: 'tbs', recipe_id: 2)
ingredient = Ingredient.create!(item: 'Cookie Dough', amount: 1, measurement: 'tube', recipe_id: 3)
ingredient = Ingredient.create!(item: 'Lettuce', amount: 1, measurement: 'head', recipe_id: 4)
ingredient = Ingredient.create!(item: 'Lettuce', amount: 1, measurement: 'head', recipe_id: 6)
ingredient = Ingredient.create!(item: 'Lettuce', amount: 1, measurement: 'head', recipe_id: 7)
ingredient = Ingredient.create!(item: 'Lettuce', amount: 1, measurement: 'head', recipe_id: 5)
ingredient = Ingredient.create!(item: 'Parmesan', amount: 4, measurement: 'oz', recipe_id: 4)
ingredient = Ingredient.create!(item: 'Crutons', amount: 7, measurement: 'squares', recipe_id: 4)
ingredient = Ingredient.create!(item: 'Chicken', amount: 1, measurement: 'lb', recipe_id: 4)
ingredient = Ingredient.create!(item: 'Chips', amount: 1, measurement: 'lb', recipe_id: 8)
ingredient = Ingredient.create!(item: 'Guac', amount: 1, measurement: 'lb', recipe_id: 8)

rating = Rating.create!(rating: 5, user_id: 1, recipe_id: 1)
rating = Rating.create!(rating: 4, user_id: 1, recipe_id: 2)
rating = Rating.create!(rating: 3, user_id: 1, recipe_id: 3)
rating = Rating.create!(rating: 3, user_id: 1, recipe_id: 4)
rating = Rating.create!(rating: 5, user_id: 1, recipe_id: 5)
rating = Rating.create!(rating: 5, user_id: 1, recipe_id: 6)
rating = Rating.create!(rating: 4, user_id: 1, recipe_id: 7)
rating = Rating.create!(rating: 2, user_id: 1, recipe_id: 8)
rating = Rating.create!(rating: 1, user_id: 1, recipe_id: 9)
rating = Rating.create!(rating: 5, user_id: 2, recipe_id: 1)
rating = Rating.create!(rating: 2, user_id: 2, recipe_id: 2)
rating = Rating.create!(rating: 1, user_id: 2, recipe_id: 3)
rating = Rating.create!(rating: 5, user_id: 2, recipe_id: 4)
rating = Rating.create!(rating: 3, user_id: 2, recipe_id: 5)
rating = Rating.create!(rating: 4, user_id: 2, recipe_id: 6)
rating = Rating.create!(rating: 2, user_id: 2, recipe_id: 7)
rating = Rating.create!(rating: 1, user_id: 2, recipe_id: 8)
rating = Rating.create!(rating: 2, user_id: 2, recipe_id: 9)
