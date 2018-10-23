class CreateCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :categories do |t|
      t.text :desc
      t.string :name
      t.string :img_url

      t.timestamps
    end
  end
end
