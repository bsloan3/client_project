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
    @user = current_user
    redirect_to root_path unless login?
    @recipe = Recipe.new
  end

  def create
    @user = current_user
    @recipe = Recipe.new(recipe_params)
    @rating = Ratings.new(rating: params[:rating][:rating], user_id: @user.id, recipe_id: params[:id] )

    @recipe.user = @user
    if @recipe.save
      redirect_to root_path
    else
      @errors = @recipe.errors.full_messages
      render "new"
    end
  end

  def edit
    @recipe = Recipe.find(params[:id])
    if current_user == @recipe.user
      render '/recipes/edit'
    else
      @errors = ["not authorized"]
      redirect_to '/recipes'
    end
  end

  def update
    @recipe = Recipe.find(params[:id])
    @recipe.update(recipe_params)

    if @recipe.save
      redirect_to "/recipes/#{@recipe.id}"
    else
      render '/recipes/edit'
    end
  end

  def destroy
      @recipe = Recipe.find(params[:id])
      @recipe.destroy
      redirect_to '/recipes'
  end
  private

  def recipe_params
    params.require(:recipe).permit(:name, :difficulty_level, :prep_time, :directions, :category)
  end

end
