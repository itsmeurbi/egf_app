class CategoriesController < ApplicationController
  def index
    redirect_to action: :show, name: default_category.name
  end

  def show
    @goals = current_user.goals
    @category = Category.includes(:tracks, tracks: :milestones).find_by(name: params[:name])
  end

  private

  def default_category
    Category.first
  end
end
