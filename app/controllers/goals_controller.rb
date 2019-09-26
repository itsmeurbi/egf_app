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

    respond_to do |format|
      if @goal.save
        save_key_result
        format.html { redirect_to goals_path, notice: 'Your goal was successfully created.' }
      else
        format.html { redirect_to new_goal_path }
      end
    end
  end

  def update
    respond_to do |format|
      if @goal.update(goal_params)
        format.html { redirect_to goals_path, notice: 'High score was successfully updated.' }
      else
        format.html { redirect_to goals_path }
      end
    end
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
