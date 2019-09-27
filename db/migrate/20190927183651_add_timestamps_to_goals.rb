class AddTimestampsToGoals < ActiveRecord::Migration[6.0]
  def change
    add_timestamps :goals, null: false, default: -> { 'NOW()' }
  end
end
