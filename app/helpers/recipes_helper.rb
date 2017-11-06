module RecipesHelper

  def own_recipe?(recipe)
    recipe.user_id == @current_user.id
  end

end
