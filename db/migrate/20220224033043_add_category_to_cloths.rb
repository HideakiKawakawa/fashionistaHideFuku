class AddCategoryToCloths < ActiveRecord::Migration[6.1]
  def change
    add_column :cloths, :category, :string
  end
end
