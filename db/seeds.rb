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
roman = User.create(username:"roman", email: "roman@r.com", password: 'brad')
mina = User.create(username:"mina", email:"mina@m.com", password:"brad")
josh = User.create(username: "josh", email:"josh@j.com", password: "brad")
phil = User.create(username: "phil", email:"phil@p.com", password:"brad")



Recipe.create(name:"Dave's Grumpy Nachos", difficulty_level: 5, prep_time: 25, directions:"Layer the ingredients, its not that hard", user: dave, category: 'Appetizer')
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

Recipe.create(name:"Wavy Chips", difficulty_level: 1, prep_time: 1, directions:"Go to the store and buy some wavyyyyyy lays", user: chris, category: 'Appetizer')
  Ingredient.create(item: 'Chips', amount: 1, measurement: 'bag', recipe_id: 2)
    Rating.create(rating: 1, user_id: 1, recipe_id: 2)
    Rating.create(rating: 5, user_id: 2, recipe_id: 2)


Recipe.create(name:"T's Escargot", difficulty_level: 5, prep_time: 60, directions:"La fine cuisine de France est au dessus de vous Les cochons américains, abandonnez", user: t, category: 'Appetizer')
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

Recipe.create(name:"Rabbit Food", difficulty_level: 2, prep_time: 10, directions:"Mix the leaves together", user: roman, category: 'Salad')
  Ingredient.create(item: 'cabbage', amount: 1, measurement: 'head', recipe_id: 4)
  Ingredient.create(item: 'kale', amount: 1, measurement: 'bag', recipe_id: 4)
  Ingredient.create(item: 'romaine', amount: 4, measurement: 'hearts', recipe_id: 4)
    Rating.create(rating: 5, user_id: 1, recipe_id: 4)
    Rating.create(rating: 4, user_id: 2, recipe_id: 4)
    Rating.create(rating: 5, user_id: 3, recipe_id: 4)
    Rating.create(rating: 1, user_id: 4, recipe_id: 4)
    Rating.create(rating: 5, user_id: 6, recipe_id: 4)

Recipe.create(name:"Penn's Southern Salad", difficulty_level: 4, prep_time: 30, directions:"This is what I eat when im trying to be healthy. Lightly tossed", user: penn, category: 'Salad')
  Ingredient.create(item: 'bacon', amount: 1, measurement: 'lb', recipe_id: 5)
  Ingredient.create(item: 'salami', amount: 3, measurement: 'stick', recipe_id: 5)
  Ingredient.create(item: 'pepperoni', amount: 1, measurement: 'package', recipe_id: 5)
  Ingredient.create(item: 'ground beef', amount: 4, measurement: 'ounze', recipe_id: 5)
  Ingredient.create(item: 'roast chicken', amount: 1, measurement: 'birds', recipe_id: 5)
  Ingredient.create(item: 'cabbage', amount: 1, measurement: 'leaf', recipe_id: 5)
    Rating.create(rating: 5, user_id: 1, recipe_id: 5)
    Rating.create(rating: 5, user_id: 2, recipe_id: 5)
    Rating.create(rating: 5, user_id: 3, recipe_id: 5)
    Rating.create(rating: 1, user_id: 4, recipe_id: 5)
    Rating.create(rating: 5, user_id: 5, recipe_id: 5)
    Rating.create(rating: 5, user_id: 6, recipe_id: 5)
    Rating.create(rating: 1, user_id: 7, recipe_id: 5)
    Rating.create(rating: 5, user_id: 8, recipe_id: 5)
    Rating.create(rating: 5, user_id: 9, recipe_id: 5)

Recipe.create(name:"Waldorf Salad", difficulty_level: 2, prep_time: 20, directions:"In a medium sized bowl, whisk together the mayonnaise (or yogurt), lemon juice, salt and pepper. Stir in the apple, celery, grapes, and walnuts. Serve on a bed of fresh lettuce.", user: penn, category: 'Salad')
  Ingredient.create(item: 'mayonnaise', amount: 6, measurement: 'Tbsp', recipe_id: 6)
  Ingredient.create(item: 'lemon juice', amount: 1, measurement: 'Tbsp', recipe_id: 6)
  Ingredient.create(item: 'salt', amount: 0.5, measurement: 'teaspoon', recipe_id: 6)
  Ingredient.create(item: 'sweet apples', amount: 2, measurement: 'apple', recipe_id: 6)
  Ingredient.create(item: 'grapes', amount: 1, measurement: 'cup', recipe_id: 6)
  Ingredient.create(item: 'celery', amount: 1, measurement: 'cup', recipe_id: 6)
    Rating.create(rating: 5, user_id: 1, recipe_id: 6)
    Rating.create(rating: 5, user_id: 2, recipe_id: 6)
    Rating.create(rating: 1, user_id: 4, recipe_id: 6)
    Rating.create(rating: 5, user_id: 5, recipe_id: 6)
    Rating.create(rating: 5, user_id: 6, recipe_id: 6)

Recipe.create(name:"Roman's Grandmother's Pierogis", difficulty_level: 2, prep_time: 40, directions:"My grandmother refused to tell anyone but my mother this recipe, I'm putting it on the internet for half a six pack.  I tell myself that I make her proud.  Put flour in a large shallow bowl and make a well in center. Add water, egg, oil, and salt to well and carefully beat together with a fork without incorporating flour. Continue stirring with a wooden spoon, gradually incorporating flour, until a soft dough forms. Transfer dough to a lightly floured surface and knead, dusting with flour as needed to keep dough from sticking, until smooth and elastic, about 8 minutes (dough will be very soft). Invert a bowl over dough and let stand at room temperature 1 hour.
Make filling while dough stands:
Peel potatoes and cut into 1-inch pieces. Cook potatoes in a large saucepan of boiling salted water until tender, about 8 minutes. Drain potatoes, then transfer to a bowl along with cheese, salt, pepper, and nutmeg and mash with a potato masher or a handheld electric mixer at low speed until smooth.
When mashed potatoes are cool enough to handle, spoon out a rounded teaspoon and lightly roll into a ball between palms of your hands. Transfer ball to a plate and keep covered with plastic wrap while making 47 more balls in same manner (there will be a little filling left over).
Make onion topping:
Cook onion in butter in a 4- to 5-quart heavy saucepan over moderately low heat, stirring occasionally (stir more frequently toward end of cooking), until golden brown, about 30 minutes. Remove from heat and season with salt and pepper.
Form and cook pierogies:
Halve dough and roll out 1 half (keep remaining half under inverted bowl) on lightly floured surface (do not overflour surface or dough will slide instead of stretching) with a lightly floured rolling pin into a 15-inch round (1/8 inch thick), then cut out 24 rounds with lightly floured cutter. Holding 1 round in palm of your hand, put 1 potato ball in center of round and close your hand to fold round in half, enclosing filling. Pinch edges together to seal completely. (If edges don't adhere, brush them lightly with water, then seal; do not leave any gaps or pierogi may open during cooking.) Transfer pierogi to a lightly floured kitchen towel (not terry cloth) and cover with another towel. Form more pierogies in same manner.
Bring a 6- to 8-quart pot of salted water to a boil. Add half of pierogies, stirring once or twice to keep them from sticking together, and cook 5 minutes from time pierogies float to surface. Transfer as cooked with a slotted spoon to onion topping and toss gently to coat. Cook remaining pierogies in same manner, transferring to onions. Reheat pierogies in onion topping over low heat, gently tossing to coat.", user: penn, category: 'Main Course')
  Ingredient.create(item: 'flour', amount: 3, measurement: 'cup', recipe_id: 7)
  Ingredient.create(item: 'water', amount: 1, measurement: 'cup', recipe_id: 7)
  Ingredient.create(item: 'egg', amount: 1, measurement: 'large', recipe_id: 7)
  Ingredient.create(item: 'teaspoon', amount: 2, measurement: 'vegetable oil', recipe_id: 7)
  Ingredient.create(item: 'salt', amount: 1, measurement: 'tsp', recipe_id: 7)
  Ingredient.create(item: 'vodka', amount: 5, measurement: 'liters', recipe_id: 7)
  Ingredient.create(item: 'potato', amount: 1.5, measurement: 'lb', recipe_id: 7)
    Rating.create(rating: 1, user_id: 1, recipe_id: 7)
    Rating.create(rating: 4, user_id: 2, recipe_id: 7)
    Rating.create(rating: 1, user_id: 4, recipe_id: 7)
    Rating.create(rating: 4, user_id: 5, recipe_id: 7)
    Rating.create(rating: 4, user_id: 7, recipe_id: 7)
    Rating.create(rating: 4, user_id: 8, recipe_id: 7)
    Rating.create(rating: 5, user_id: 9, recipe_id: 7)
    Rating.create(rating: 5, user_id: 3, recipe_id: 7)

Recipe.create(name:"Brad's Baller Bugers", difficulty_level: 3, prep_time: 30, directions:"The key to a good baller burger is love and care.  Next most important is the rosemary, mix thoughly in with the meat.  Cook a min shorter than you would think.", user: brad, category: 'Main Course')
  Ingredient.create(item: 'bun', amount: 1, measurement: 'package', recipe_id: 8)
  Ingredient.create(item: 'ground beef', amount: 3, measurement: 'lb', recipe_id: 8)
  Ingredient.create(item: 'cheese', amount: 2, measurement: 'lb', recipe_id: 8)
  Ingredient.create(item: 'lettuce', amount: 1, measurement: 'head', recipe_id: 8)
    Rating.create(rating: 5, user_id: 1, recipe_id: 8)
    Rating.create(rating: 4, user_id: 2, recipe_id: 8)
    Rating.create(rating: 4, user_id: 4, recipe_id: 8)
    Rating.create(rating: 5, user_id: 5, recipe_id: 8)
    Rating.create(rating: 4, user_id: 7, recipe_id: 8)
    Rating.create(rating: 4, user_id: 8, recipe_id: 8)
    Rating.create(rating: 5, user_id: 9, recipe_id: 8)

Recipe.create(name:"Thomas's Mountain of Dumplings", difficulty_level: 1, prep_time: 10, directions:"You poor af??? Then look no shorter than Vanessa's Dumplings.  You buy them bye the sack and then boil them up.", user: thomas, category: 'Main Course')
  Ingredient.create(item: 'dumplings', amount: 1, measurement: 'bag', recipe_id: 9)
    Rating.create(rating: 3, user_id: 1, recipe_id: 9)
    Rating.create(rating: 4, user_id: 2, recipe_id: 9)
    Rating.create(rating: 3, user_id: 4, recipe_id: 9)
    Rating.create(rating: 4, user_id: 5, recipe_id: 9)
    Rating.create(rating: 5, user_id: 7, recipe_id: 9)
    Rating.create(rating: 2, user_id: 8, recipe_id: 9)
    Rating.create(rating: 5, user_id: 9, recipe_id: 9)

Recipe.create(name:"Mina's miricle cookies", difficulty_level: 2, prep_time: 15, directions:"DBC student, yet you dont't know mina????? Then your not trying hard enough, she is the lovely women who tides the space for us in the evening after hours.  She is super nice and loves chocolate chip cookies.  Mix the ingredients bellow and place on non-greased cooking sheet.  Bake at 350 degrees for 20 min.  Let cool, even though its so hard.", user: mina, category: 'Dessert')
  Ingredient.create(item: 'flour', amount: 2, measurement: 'cup', recipe_id: 10)
  Ingredient.create(item: 'water', amount: 1, measurement: 'cup', recipe_id: 10)
  Ingredient.create(item: 'butter', amount: 2, measurement: 'sticks', recipe_id: 10)
  Ingredient.create(item: 'chocolate chips', amount: 1, measurement: 'bag', recipe_id: 10)
    Rating.create(rating: 4, user_id: 7, recipe_id: 10)
    Rating.create(rating: 2, user_id: 8, recipe_id: 10)
    Rating.create(rating: 4, user_id: 9, recipe_id: 10)

Recipe.create(name:"Najah's Sucide Cheese Cake", difficulty_level: 5, prep_time: 45, directions:"I am lactose intolerant, this cake kills me, BUT its worth it.  Crafted using only the finest ingredients, this cake will change your perception of reality.  Mix the indgredients together, bake for 25 min.", user: najah, category: 'Dessert')
  Ingredient.create(item: 'saffon', amount: 1, measurement: 'pinch', recipe_id: 11)
  Ingredient.create(item: 'gold leaf', amount: 3, measurement: 'cm', recipe_id: 11)
  Ingredient.create(item: 'white truffle', amount: 1, measurement: 'gram', recipe_id: 11)
  Ingredient.create(item: 'kopi luwak grounds', amount: 0.1, measurement: 'grams', recipe_id: 11)
  Ingredient.create(item: 'moose house cheese', amount: 2, measurement: 'blocks', recipe_id: 11)
  Ingredient.create(item: 'sugar', amount: 3, measurement: 'cups', recipe_id: 11)
    Rating.create(rating: 5, user_id: 1, recipe_id: 11)
    Rating.create(rating: 5, user_id: 2, recipe_id: 11)
    Rating.create(rating: 5, user_id: 3, recipe_id: 11)
    Rating.create(rating: 5, user_id: 10, recipe_id: 11)
    Rating.create(rating: 5, user_id: 5, recipe_id: 11)
    Rating.create(rating: 5, user_id: 6, recipe_id: 11)
    Rating.create(rating: 5, user_id: 7, recipe_id: 11)
    Rating.create(rating: 5, user_id: 8, recipe_id: 11)
    Rating.create(rating: 5, user_id: 9, recipe_id: 11)

Recipe.create(name:"Insomnia Cookies Secret Recipe", difficulty_level: 5, prep_time: 45, directions:"877-632-6654", user: thomas, category: 'Dessert')
  Ingredient.create(item: 'cookies', amount: 12, measurement: '877-632-6654', recipe_id: 12)
    Rating.create(rating: 2, user_id: 1, recipe_id: 12)
    Rating.create(rating: 5, user_id: 2, recipe_id: 12)
    Rating.create(rating: 5, user_id: 3, recipe_id: 12)
    Rating.create(rating: 2, user_id: 10, recipe_id: 12)
    Rating.create(rating: 4, user_id: 5, recipe_id: 12)
    Rating.create(rating: 3, user_id: 6, recipe_id: 12)
    Rating.create(rating: 5, user_id: 7, recipe_id: 12)

Recipe.create(name: 'Cereal', difficulty_level: 1, prep_time: 1, directions: "First pour ceral, than pour milk. Do not reverse this order or it's pre-crime.", user_id: 1, category: 'Main Course')
  Ingredient.create(item: 'Ceral', amount: 2, measurement: 'cup', recipe_id: 13)
  Ingredient.create(item: 'Milk', amount: 5, measurement: 'oz', recipe_id: 13)
    Rating.create(rating: 3, user_id: 13, recipe_id: 13)
    Rating.create(rating: 2, user_id: 12, recipe_id: 13)

Recipe.create(name: 'Scrabmbled Eggs', difficulty_level: 3, prep_time: 15, directions: "Crack eggs into bowl. Add Milk and mix. Pour mix into pan on stove. Continuous scramble motion with spatuala until cooked to your liking.", user_id: 2, category: 'Main Course')
  Ingredient.create(item: 'Eggs', amount: 3, measurement: 'eggs', recipe_id: 14)
  Ingredient.create(item: 'Milk', amount: 1, measurement: 'tbs', recipe_id: 14)
  Ingredient.create(item: 'salt', amount: 1, measurement: 'pinch', recipe_id: 14)
  Ingredient.create(item: 'pepper', amount: 1, measurement: 'pinch', recipe_id: 14)
    Rating.create(rating: 1, user_id: 1, recipe_id: 14)
    Rating.create(rating: 2, user_id: 12, recipe_id: 14)
    Rating.create(rating: 1, user_id: 7, recipe_id: 14)
    Rating.create(rating: 4, user_id: 3, recipe_id: 14)

Recipe.create(name: 'Ceasar Salad', difficulty_level: 2, prep_time: 10, directions: "Chop lettuce and place in bowl. Add chicken, dressing, cheese, crutons and mix.", user_id: 2, category: 'Salad')
  Ingredient.create(item: 'Crutons', amount: 7, measurement: 'squares', recipe_id: 15)
  Ingredient.create(item: 'Chicken', amount: 1, measurement: 'lb', recipe_id: 15)
  Ingredient.create(item: 'Lettuce', amount: 1, measurement: 'lb', recipe_id: 15)
    Rating.create(rating: 1, user_id: 2, recipe_id: 15)
    Rating.create(rating: 2, user_id: 1, recipe_id: 15)
    Rating.create(rating: 1, user_id: 8, recipe_id: 15)
    Rating.create(rating: 2, user_id: 9, recipe_id: 15)
