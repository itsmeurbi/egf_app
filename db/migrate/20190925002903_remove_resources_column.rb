class RemoveResourcesColumn < ActiveRecord::Migration[6.0]
  def change
    remove_column :resources, :task_id
  end
end
