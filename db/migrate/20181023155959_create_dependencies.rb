class CreateDependencies < ActiveRecord::Migration[5.2]
  def change
    create_table :dependencies do |t|
      t.integer :dependent_id
      t.integer :dependee_id

      t.timestamps
    end
  end
end
