class UsersController < ApplicationController
  def new
    @user = User.new
    render "/users/new"
  end

  def create
    @user = User.new(email: params[:user][:email], password: params[:user][:password])
    if @user.save
      redirect_to '/'
    else
      @errors = "Try again."
      render '/users/new'
    end
  end

  def show
    @user = User.find_by(id: @current_user.id)
    @recipe = Recipe.new
  end
end
