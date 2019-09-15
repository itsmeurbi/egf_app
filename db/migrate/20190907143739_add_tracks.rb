class AddTracks < ActiveRecord::Migration[6.0]
  def change
    create_table :tracks do |t|
      t.string :name
      t.string :description
    end

    add_reference :tracks, :category, foreign_key: true
  end
end
