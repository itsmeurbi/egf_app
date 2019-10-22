class KeyResultsController < ApplicationController
  before_action :authenticate_user
  before_action :set_goal, only: %i[new]

  def new
    @key_result = KeyResult.new(objective: @goal.objective)
  end

  def create
    @key_result = KeyResult.new(key_result_params)

    if @key_result.save
      flash[:success] = t("notices.key_results.create.success")
      redirect_to goals_path
    else
      flash[:error] = t("notices.key_results.create.error")
      redirect_to new_goal_path
    end
  end

  private

  def key_result_params
    params.require(:key_result).permit(:description, :objective_id)
  end

  def set_goal
    @goal = Goal.find(params[:goal_id])
  end
end
