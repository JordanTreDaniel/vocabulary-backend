class CreateCards < ActiveRecord::Migration[5.2]
  def change
    create_table :cards do |t|
      t.string :term
      t.text :desc
      t.string :def

      t.timestamps
    end
  end
end
