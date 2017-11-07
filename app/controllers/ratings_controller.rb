class RatingsController < ApplicationController
  def new
  end

  def create
    @user = current_user
    @recipe = Recipe.find_by(id: params[:recipe_id])
    @ratings = Rating.new(rating: params[:rating], user_id: current_user.id, recipe_id: @recipe.id)

    if @ratings.save
      redirect_to "/recipes/#{@ratings.recipe_id}"
    else
      @error = ["You are not allowed to rate this!"]
      p @ratings.errors
      render :"/recipes/show"
    end
  end


  def edit

  end

  def update
    @user = current_user
    @recipe = Recipe.find_by(id: params[:recipe_id])
    # binding.pry
    @rating = Rating.find_by(id: params[:id])
    @rating.update(rating: params[:rating], user_id: @user.id, recipe_id: @recipe.id)

    if @rating.save
      redirect_to "/recipes/#{@recipe.id}"
    else
      @error=["Try again!"]
    end
  end

end
