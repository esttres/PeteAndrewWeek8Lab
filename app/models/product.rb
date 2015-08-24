class Product < ActiveRecord::Base
  has_many :line_items
  has_many :carts, through: :line_items
  before_destroy :not_located_in_cart

  def not_located_in_cart
    if line_items.count.zero?
      return true
    else
      errors[:base] << "line items present"
      return false
    end
  end

end
