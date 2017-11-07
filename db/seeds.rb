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



brad = User.create(username: 'brad', email: 'brad@brad.com', password: 'brad')
jon = User.create(username: 'jon', email: 'jon@jon.com', password: 'brad')
thomas = User.create(username: 'thomas', email: 'thomas@thomas.com', password: 'brad')
najah = User.create(username: 'najah', email: 'najah@n.com', password: 'brad')
penn = User.create(username: 'penn', email: "penn@p.com", password: 'brad')
chris = User.create(username: 'waviest', email: "chris@c.com", password: "brad")
dave = User.create(username: 'dave', email: "dave@d.com", password: 'brad')
t = User.create(username:"t", email: "t@t.com", password: 'brad')


nachos = Recipe.create(name:"Dave's Grumpy Nachos", difficulty_level: 5, prep_time: 25, directions:"Layer the ingredients, its not that hard", user: dave, category: 'Appetizer')
  Ingredient.create(item: 'Chips', amount: 1, measurement: 'bag', recipe_id: 1)
  Ingredient.create(item: 'Cheese', amount: 2, measurement: 'bag', recipe_id: 1)
  Ingredient.create(item: 'Roaseted Chicken', amount: 1, measurement: 'bird', recipe_id: 1)
  Ingredient.create(item: 'Guac', amount: 10, measurement: 'spoon', recipe_id: 1)
    Rating.create(rating: 5, user_id: 1, recipe_id: 1)
    Rating.create(rating: 5, user_id: 2, recipe_id: 1)
    Rating.create(rating: 5, user_id: 3, recipe_id: 1)
    Rating.create(rating: 2, user_id: 4, recipe_id: 1)
    Rating.create(rating: 5, user_id: 5, recipe_id: 1)
    Rating.create(rating: 1, user_id: 6, recipe_id: 1)

fries = Recipe.create(name:"Wavy Chips", difficulty_level: 1, prep_time: 1, directions:"Go to the store and buy some wavyyyyyy lays", user: chris, category: 'Appetizer')
  Ingredient.create(item: 'Chips', amount: 1, measurement: 'bag', recipe_id: 2)
    Rating.create(rating: 1, user_id: 1, recipe_id: 2)
    Rating.create(rating: 5, user_id: 2, recipe_id: 2)

escargot = Recipe.create(name:"T's Escargot", difficulty_level: 5, prep_time: 60, directions:"La fine cuisine de France est au dessus de vous Les cochons américains, abandonnez", user: chris, category: 'Appetizer')
  Ingredient.create(item: 'snails', amount: 1, measurement: 'pound', recipe_id: 3)
  Ingredient.create(item: 'butter', amount: 1, measurement: 'stick', recipe_id: 3)
  Ingredient.create(item: 'shallot', amount: 1, measurement: 'stalk', recipe_id: 3)
  Ingredient.create(item: 'galic', amount: 1, measurement: 'clove', recipe_id: 3)
  Ingredient.create(item: 'Italian parsley', amount: 2, measurement: 'tablespoon', recipe_id: 3)
  Ingredient.create(item: 'lemon juice', amount: 2, measurement: 'tablespoon', recipe_id: 3)
    Rating.create(rating: 5, user_id: 1, recipe_id: 3)
    Rating.create(rating: 5, user_id: 2, recipe_id: 3)
    Rating.create(rating: 5, user_id: 3, recipe_id: 3)
    Rating.create(rating: 5, user_id: 4, recipe_id: 3)
    Rating.create(rating: 5, user_id: 5, recipe_id: 3)
    Rating.create(rating: 5, user_id: 6, recipe_id: 3)
    Rating.create(rating: 5, user_id: 7, recipe_id: 3)
