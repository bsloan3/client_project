class IngredientsController < ApplicationController

  def update
    @recipe = Recipe.find(params[:id])
    @ingredients = Ingredient.find_by(recipe: @recipe.id)
    @ingredients.update(ingredient_params)

    if @ingredients.save
      redirect_to "/recipes/#{@recipe.id}"
    else

  end

  def ingredient_params
    params.require(:ingredient).permit(:item, :amount, :measurement, :recipe)
  end
  #
  # def new
  #   @user = current_user
  #   @ingredient = Ingredient.new
  #   2.times {@ingredient.}
  # end
  #
  # def create
  #   @user = current_user
  #   @recipe = Recipe.find(params[:id])
  #   @ingredient = Ingredient.new(ingredient_params)
  #   @ingredient.recipe = @recipe
  #   if @ingredient.save
  #     render "/recipes/new"
  #   else
  #     @errors = @ingredient.errors.full_messages
  #     render "new"
  #   end
  # end
  #
  # private
  #
  # def ingredient_params
  #   params.require(:ingredient).permit(:item, :amount, :measurement, :recipe)
  # end

end
