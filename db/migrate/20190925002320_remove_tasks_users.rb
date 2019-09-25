class RemoveTasksUsers < ActiveRecord::Migration[6.0]
  def change
    drop_table :tasks_users
  end
end
