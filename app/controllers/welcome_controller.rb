class WelcomeController < ApplicationController
  skip_before_action :authenticate_user

  def index
    redirect_to :goals if current_user
  end
end
