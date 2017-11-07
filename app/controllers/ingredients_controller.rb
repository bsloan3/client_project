class IngredientsController < ApplicationController
  def edit
    @ingredient = Ingredient.find(params[:id])
    @recipe = @ingredient.recipe
  end

  def update
    @ingredient = Ingredient.find(params[:id])
    @recipe = @ingredient.recipe
    @ingredient.update(ingredient_params)

    if @ingredient.save
      redirect_to "/recipes/#{@recipe.id}"
    else
      render :'_edit'
    end
  end

  def delete
    @ingredient = Ingredient.find_by(id: params[:id])
    @ingredient.destroy
    redirect_to "/recipes/#{@ingredient.recipe_id}"
  end

  private

  def ingredient_params
    params.require(:ingredient).permit(:item, :amount, :measurement, :recipe)
  end
  # #
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
