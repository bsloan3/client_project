class RatingsController < ApplicationController
  def new
  end

  def create
    @user = current_user
    @recipe = Recipe.find_by(id: params[:recipe_id])
    @ratings = Rating.new(rating: params[:rating], user_id: current_user.id, recipe_id: @recipe.id)
    binding.pry
    if @ratings.save
      redirect_to "/recipes/#{@ratings.recipe_id}"
    else
      @error = ["You are not allowed to rate this!"]
      render :"/recipes/show"
    end
  end

end
