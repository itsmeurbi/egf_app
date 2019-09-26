class AddKeyResults < ActiveRecord::Migration[6.0]
  def change
    create_table :key_results do |t|
      t.string :description
    end

    add_reference :key_results, :objective, foreign_key: true
  end
end
