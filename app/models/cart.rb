class Cart < ActiveRecord::Base
  has_many :line_items, :dependent => :destroy
  has_many :products, through: :line_items


  def purchase_total
    self.line_items.inject(0){|sum, num| sum + num.product.price}
  end
end
