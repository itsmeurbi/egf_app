class GoalsController < ApplicationController
  before_action :authenticate_user

  def index; end

  def new
    @categories = Category.all
    @tracks = Track.all
    @users = User.all
  end
end
