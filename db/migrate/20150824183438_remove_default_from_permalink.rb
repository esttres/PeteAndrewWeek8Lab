class RemoveDefaultFromPermalink < ActiveRecord::Migration
  def change
    change_column :carts, :permalink, :string
  end
end
