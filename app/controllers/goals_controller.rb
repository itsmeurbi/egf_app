class GoalsController < ApplicationController
  before_action :authenticate_user

  def index; end

  def new
    @categories = Category.all
    @tracks = Track.all
    @mentors = User.mentors(current_user.email)
    @milestones = Milestone.all
  end

  def goal_params
    params.require(:goal).permit(
      :start_time, :end_time, :mentor_id
    )
  end
end
