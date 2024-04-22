class RemoveCategoryFromCloths < ActiveRecord::Migration[6.1]
  def change
    remove_column :cloths, :category, :string
  end
end
