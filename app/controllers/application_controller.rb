class ApplicationController < ActionController::Base
  helper_method :current_user

  def current_user
    return false if session[:user_id].nil?
    User.find(session[:user_id])
  end

  def authenticate_user
    redirect_to root_path unless current_user
   end
end
