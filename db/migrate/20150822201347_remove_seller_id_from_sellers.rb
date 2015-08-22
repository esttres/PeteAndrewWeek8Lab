class RemoveSellerIdFromSellers < ActiveRecord::Migration
  def change
    remove_column :sellers, :seller_id, :integer
  end
end
