class RemoveProductIdFromCarts < ActiveRecord::Migration
  def change
    remove_column :carts, :product_id, :integer
  end
end
