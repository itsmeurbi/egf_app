class ObjectivesController < ApplicationController
  before_action :authenticate_user

  def index; end

  def new
    @objective = Objective.new
  end
end
