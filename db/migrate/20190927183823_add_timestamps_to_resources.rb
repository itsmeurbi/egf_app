class AddTimestampsToResources < ActiveRecord::Migration[6.0]
  def change
    add_timestamps :resources, null: false, default: -> { 'NOW()' }
  end
end
