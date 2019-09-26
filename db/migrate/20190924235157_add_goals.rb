class AddGoals < ActiveRecord::Migration[6.0]
  def change
    create_table :goals do |t|
      t.date :start_time
      t.date :end_time
      t.integer :mentor_id
    end

    add_reference :goals, :user, foreign_key: true
    add_reference :goals, :milestone, foreign_key: true
    add_foreign_key :goals, :users, column: :mentor_id
  end
end
