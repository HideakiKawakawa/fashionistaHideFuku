class AddPlaceToCloths < ActiveRecord::Migration[6.1]
  def change
    add_column :cloths, :place, :string
  end
end
