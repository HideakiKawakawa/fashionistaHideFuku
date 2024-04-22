class AddPantsToCloths < ActiveRecord::Migration[6.1]
  def change
    add_column :cloths, :pants, :string
  end
end
