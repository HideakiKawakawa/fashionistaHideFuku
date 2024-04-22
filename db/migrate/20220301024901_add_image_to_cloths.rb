class AddImageToCloths < ActiveRecord::Migration[6.1]
  def change
    add_column :cloths, :image, :string
  end
end
