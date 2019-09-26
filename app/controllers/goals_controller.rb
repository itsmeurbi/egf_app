class GoalsController < ApplicationController
  before_action :authenticate_user
  before_action :set_user_id, only: %i[create]
  before_action :set_goal, only: %i[edit update]

  def index
    @goals = Goal.all
  end

  def edit
    @categories = Category.all
    @tracks = Track.all
    @mentors = User.mentors(current_user.email)
    @milestones = Milestone.all
  end

  def new
    @categories = Category.all
    @tracks = Track.all
    @mentors = User.mentors(current_user.email)
    @milestones = Milestone.all
    @goal = Goal.new
    @goal.objectives.build
  end

  def create
    @goal = Goal.new(goal_params)

    if @goal.save
      save_key_result
      flash[:success] = 'Tu meta ha sido creada exitosamente'
      redirect_to goals_path
    else
      flash[:error] = @goal.errors
      redirect_to new_goal_path
    end
  end

  def update
    if @goal.update(goal_params)
      flash[:success] = 'Tu meta ha sido actualizada exitosamente'
    else
      flash[:error] = @goal.errors
    end

    redirect_to goals_path
  end

  private

  def goal_params
    params.require(:goal).permit(
      :start_time, :end_time, :mentor_id, :milestone_id, :user_id,
      objectives_attributes: [:description]
    )
  end

  def save_key_result
    KeyResult.create(
      description: params[:goal][:key_results][:description],
      objective: @goal.objectives.first
    )
  end

  def set_user_id
    params[:goal][:user_id] = current_user.id
  end

  def set_goal
    @goal = Goal.find(params[:id])
  end
end
