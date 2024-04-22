class CreateCloths < ActiveRecord::Migration[6.1]
  def change
    create_table :cloths do |t|
      t.string :price
      t.string :size
      t.string :brand
    

      t.timestamps
    end
  end
end
