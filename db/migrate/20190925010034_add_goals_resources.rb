class AddGoalsResources < ActiveRecord::Migration[6.0]
  def change
    create_table :goal_resources do |t|
      t.references :goal, index: true, foreign_key: true
      t.references :resource, index: true, foreign_key: true
    end
  end
end
