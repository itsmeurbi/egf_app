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
    objective = @goal.build_objective
    objective.key_results.build
  end

  def create
    @goal = Goal.new(goal_params)

    if @goal.save
      flash[:success] = 'Tu meta ha sido creada exitosamente'
      redirect_to goals_path
    else
      flash[:error] = @goal.errors.messages.keys.join(', ') + " can't be blank"
      redirect_to new_goal_path
    end
  end

  def update
    if @goal.update(goal_params)
      flash[:success] = 'Tu meta ha sido actualizada exitosamente'
    else
      flash[:error] = @goal.errors.messages.keys.join(', ') + " can't be blank"
    end

    redirect_to goals_path
  end

  private

  def goal_params
    params.require(:goal).permit(
      :start_time, :end_time, :mentor_id, :milestone_id, :user_id,
      objective_attributes: [:description,
        key_results_attributes: [:description]
      ]
    )
  end

  def set_user_id
    params[:goal][:user_id] = current_user.id
  end

  def set_goal
    @goal = Goal.find(params[:id])
  end
end
