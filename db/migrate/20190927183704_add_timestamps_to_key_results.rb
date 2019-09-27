class AddTimestampsToKeyResults < ActiveRecord::Migration[6.0]
  def change
    add_timestamps :key_results, null: false, default: -> { 'NOW()' }
  end
end
