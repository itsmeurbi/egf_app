class AddTimestampsToTracks < ActiveRecord::Migration[6.0]
  def change
    add_timestamps :tracks, null: false, default: -> { 'NOW()' }
  end
end
