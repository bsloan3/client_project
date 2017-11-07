module RecipesHelper

  def own_recipe?(recipe)
    recipe.user_id == @current_user.id
  end

  def sort_rating(recipes)
    recipes.sort_by {|recipe| -recipe.ratings.average(:rating)}
  end

end
