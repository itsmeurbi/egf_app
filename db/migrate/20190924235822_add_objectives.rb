class AddObjectives < ActiveRecord::Migration[6.0]
  def change
    create_table :objectives do |t|
      t.string :description
    end

    add_reference :objectives, :goal, foreign_key: true
  end
end
