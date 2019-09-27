class AddTimestampsToCategories < ActiveRecord::Migration[6.0]
  def change
    add_timestamps :categories, null: false, default: -> { 'NOW()' }
  end
end
