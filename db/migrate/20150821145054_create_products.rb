class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.integer :product_id
      t.string :title
      t.integer :price
      t.text :description
      t.integer :seller_id

      t.timestamps null: false
    end
  end
end
