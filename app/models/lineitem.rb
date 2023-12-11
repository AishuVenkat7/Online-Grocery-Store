class Lineitem < ApplicationRecord
  belongs_to :product
  belongs_to :cart
  belongs_to :order, optional: true

  def total_price_of_each_item
    self.quantity * self.product.price
  end
end
