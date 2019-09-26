class ObjectivesController < ApplicationController
  def index; end

  def new
    @objective = Objective.new
  end
end
