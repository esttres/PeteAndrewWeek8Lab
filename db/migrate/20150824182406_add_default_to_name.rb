class AddDefaultToName < ActiveRecord::Migration
  def change
    change_column :carts,:name, :string, :default => "my_cart"
  end
end
