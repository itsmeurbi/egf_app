class GoalsController < ApplicationController
  def index; end

  def new
    @categories = Category.all
    @tracks = Track.all
    @users = User.all
  end
end
