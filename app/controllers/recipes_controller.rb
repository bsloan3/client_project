class RecipesController < ApplicationController

  include RecipesHelper

  def index
    current_user
    @recipes = Recipe.all
    if params[:search]
      @recipes = Recipe.search(params[:search]).order("created_at DESC")
    else
      @recipes = Recipe.all.order("created_at DESC")
    end
  end

  def home
    current_user
    @main_course_recipes = Recipe.where(category: 'Main Course')
    @main_course_sort = sort_rating(@main_course_recipes)
    @salad_recipes = Recipe.where(category: 'Salad')
    @salad_sort = sort_rating(@salad_recipes)
    @apps_recipes = Recipe.where(category: 'Appetizer')
    @apps_sort = sort_rating(@apps_recipes)
    @dessert_recipes = Recipe.where(category: 'Dessert')
    @dessert_sort = sort_rating(@dessert_recipes)
  end

  def show
    current_user
    # Will need to change this once nested objects are inserted
    @recipe = Recipe.find_by(id: params[:id])
    @current_user_rating = Rating.find_by(user: current_user, recipe: @recipe)
  end

  def new
    @user = current_user
    redirect_to root_path unless login?
    @recipe = Recipe.new
    4.times { @recipe.ingredients.new }
  end

  def create
    @user = current_user
    @recipe = Recipe.new(recipe_params)
    @recipe.user = @user

    if @recipe.save
      params['recipe']['ingredients_attributes'].each do |i|
        ingredient_values = params['recipe']['ingredients_attributes']["#{i}"].values
        Ingredient.create(item: ingredient_values[0], amount: ingredient_values[1], measurement: ingredient_values[2], recipe_id: @recipe.id)
      end
      redirect_to root_path
    else
      @errors = @recipe.errors.full_messages
      render "new"
    end
  end

  def edit
    @recipe = Recipe.find(params[:id])
    @ingredients = Ingredient.find_by(recipe: @recipe.id)

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

  # def ingredient_params
  #   params.require(:ingredient).permit(:item, :amount, :measurement, :recipe)
  # end
end
