class Cart < ActiveRecord::Base
  include Payola::Sellable
  has_many :line_items, :dependent => :destroy


  def purchase_total
    self.line_items.inject(0){|sum, num| sum + num.product.price}
  end
end
