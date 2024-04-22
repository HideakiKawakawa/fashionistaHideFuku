class AddTopsToCloths < ActiveRecord::Migration[6.1]
  def change
    add_column :cloths, :tops, :string
  end
end
