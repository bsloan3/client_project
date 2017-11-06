class RecipesController < ApplicationController

  def index
    current_user
    @recipes = Recipe.all
  end

  def show
    current_user
    # Will need to change this once nested objects are inserted
    @recipe = Recipe.find_by(id: params[:id])
  end

  def new
    current_user
    @recipe = Recipe.new
  end

  def create
    @recipe = current_user.recipe.new(recipe_params)
    if @recipe.save
      redirect_to root_path
    else
      @errors = @recipe.errors.full_messages
      render "new"
    end
  end

  private

  def concert_params
    params.require(:concert).permit(:name, :difficulty_level, :prep_time, :directions, :user, :recipeable_type, :recipeable_id)
  end

end
