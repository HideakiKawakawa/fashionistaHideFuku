class AddUserIdToCloths < ActiveRecord::Migration[6.1]
  def change
    add_column :cloths, :user_id, :integer
  end
end
