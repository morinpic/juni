class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title, null:false
      t.text :body, null:false

      t.timestamps null: false
    end
  end
end
