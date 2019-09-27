class AddTimestampsToGoalResources < ActiveRecord::Migration[6.0]
  def change
    add_timestamps :goal_resources, null: false, default: -> { 'NOW()' }
  end
end
