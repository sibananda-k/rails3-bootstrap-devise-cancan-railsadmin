class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.integer :price
      t.integer :sku
      t.integer :catagory_id
      t.timestamps
    end
  end
end
