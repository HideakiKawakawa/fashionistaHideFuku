class AddOuterToCloths < ActiveRecord::Migration[6.1]
  def change
    add_column :cloths, :outer, :string
  end
end
