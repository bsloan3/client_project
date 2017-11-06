class UsersController < ApplicationController
  def new
    @user = User.new
    render "/users/new"
  end

  def create
    @user = User.new(username: params[:user][:username], email: params[:user][:email], password: params[:user][:password])
    if @user.save
      redirect_to "/user/#{@user.id}"
    else
      @errors = "Try again."
      render '/users/new'
    end
  end

  def show
    @user = User.find_by(id: current_user.id)

  end
end
