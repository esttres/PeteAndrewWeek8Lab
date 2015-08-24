class RemoveDefaultFromPermalinkagain < ActiveRecord::Migration
  def change
    change_column_default(:carts, :permalink, nil)
  end
end
