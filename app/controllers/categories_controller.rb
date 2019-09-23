class CategoriesController < ApplicationController
  def show
    @category = Category.find_by(name: params[:name]) || Category.first
  end
end
