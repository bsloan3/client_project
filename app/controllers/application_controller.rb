class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

#Mentor taught Thomas this, look into functionality
# before_action :current_user

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def logged_in?
    !!current_user
  end
end
