class SessionsController < ApplicationController
  def google_auth
    access_token = request.env["omniauth.auth"]
    user = User.create_from_omniauth(access_token)
    session[:user_id] = user.id
    # Access_token is used to authenticate request made from the rails application to the google server
    user.google_token = access_token.credentials.token
    # Refresh_token to request new access_token
    # Note: Refresh_token is only sent once during the first request
    refresh_token = access_token.credentials.refresh_token
    user.google_refresh_token = refresh_token if refresh_token.present?
    user.save

    redirect_to goals_path
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end
end
