class GoalsController < ApplicationController
  before_action :authenticate_user

  def index; end

  def new
    @categories = Category.all
    @tracks = Track.all
    @users = User.all
  end

  def goal_params
    # params.require(:goal).permit(
    #   :name, :price,
    #   image_attributes: [ :id, :url, :alt, :caption ]
    # )
  end
end
