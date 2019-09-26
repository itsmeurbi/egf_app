class AddCompletedColumn < ActiveRecord::Migration[6.0]
  def change
    add_column :key_results, :completed, :boolean, default: false
  end
end
