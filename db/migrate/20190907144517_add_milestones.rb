class AddMilestones < ActiveRecord::Migration[6.0]
  def change
    create_table :milestones do |t|
      t.string :level
      t.string :description
    end

    add_reference :milestones, :track, foreign_key: true
  end
end
