class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :username
      t.string :avatar_url
      t.boolean :admin, null: false, default: false

      t.timestamps
    end
  end
end
