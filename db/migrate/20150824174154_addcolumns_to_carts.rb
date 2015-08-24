class AddcolumnsToCarts < ActiveRecord::Migration
  def change
    add_column :carts, :name, :string
    add_column :carts, :permalink, :string, :default => "my_permalink"
    add_column :carts, :price, :integer, :default => 0
  end
end
