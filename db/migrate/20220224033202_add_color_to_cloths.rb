class AddColorToCloths < ActiveRecord::Migration[6.1]
  def change
    add_column :cloths, :color, :string
  end
end
