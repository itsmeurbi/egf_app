class AddTimestampsToObjectives < ActiveRecord::Migration[6.0]
  def change
    add_timestamps :objectives, null: false, default: -> { 'NOW()' }
  end
end
