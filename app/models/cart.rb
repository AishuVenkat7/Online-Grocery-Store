class Cart < ApplicationRecord
    has_many :lineitems, dependent: :destroy

    def add_item(product_id)
      current_item = self.lineitems.find_by(product_id: product_id)
      if current_item
        current_item.quantity+=1
      else
        current_item = self.lineitems.build(product_id: product_id)
      end
      current_item
    end

    def total_cart_price
        self.lineitems.to_a.sum do |item|
            item.total_price_of_each_item
        end
    end

    def increment_lineitem_quantity(product_id)
        current_item = self.lineitems.find_by(product_id: product_id)
      if current_item
        current_item.quantity+=1
      end
      current_item
    end

    def decrement_lineitem_quantity(product_id)
        current_item = self.lineitems.find_by(product_id: product_id)
      if current_item
        current_item.quantity-=1
      end
      current_item
    end

    def total_items_in_the_cart
        puts self.lineitems.any? { |item| item.order_id.present? }
        if self.lineitems.any? { |item| item.order_id.present? }
            0
        else
            self.lineitems.sum(:quantity)
        end
    end
end
