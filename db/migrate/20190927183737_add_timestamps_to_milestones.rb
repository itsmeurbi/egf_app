class AddTimestampsToMilestones < ActiveRecord::Migration[6.0]
  def change
    add_timestamps :milestones, null: false, default: -> { 'NOW()' }
  end
end
