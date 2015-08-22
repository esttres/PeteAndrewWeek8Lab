class AddSellerIdToSellers < ActiveRecord::Migration
  def change
    add_column :sellers, :seller_id, :integer
  end
end
