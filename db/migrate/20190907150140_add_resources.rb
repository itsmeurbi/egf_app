class AddResources < ActiveRecord::Migration[6.0]
  def change
    create_table :resources do |t|
      t.string :name
      t.string :description
      t.string :url
    end

    add_reference :resources, :task, foreign_key: true
  end
end
