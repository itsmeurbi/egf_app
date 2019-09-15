class AddTasksUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks_users do |t|
      t.boolean :accomplished, default: false
    end

    add_reference :tasks_users, :user, foreign_key: true
    add_reference :tasks_users, :task, foreign_key: true
  end
end
