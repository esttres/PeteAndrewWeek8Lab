class Cart < ActiveRecord::Base
  include Payola::Sellable

  has_many :line_items, :dependent => :destroy
  has_many :products, through: :line_items

  before_validation :set_permalink, on: :create

  def set_permalink
    self.permalink = SecureRandom.urlsafe_base64
  end
  def total_quantity

    line_items.sum(:quantity)

  end


  def purchase_total
    self.line_items.inject(0){|sum, num| sum + num.product.price}
  end

  def clear
    line_items.destroy_all
    update(:price => 0)
  end

end
