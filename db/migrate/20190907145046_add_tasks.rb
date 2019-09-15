class AddTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.string :name
      t.string :description
    end

    add_reference :tasks, :track, foreign_key: true
    add_reference :tasks, :milestone, foreign_key: true
  end
end
