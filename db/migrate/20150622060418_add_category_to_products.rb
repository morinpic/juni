class AddCategoryToProducts < ActiveRecord::Migration
  def change
    add_column :products, :category, :string
    change_column_null :products, :category, false
  end
end
