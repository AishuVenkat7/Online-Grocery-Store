class Order < ApplicationRecord
    has_many :lineitems, dependent: :destroy

    PAYTYPES =["credit card", "debit card", "gpay", "applepay", "venmo"]
    validates(:name, :address, presence: true)
    validates(:paytype, inclusion: PAYTYPES)
    validates(:email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP })

    def add_order_id_in_lineitems(cart)
        # cart.lineitems.each do |item|
        #     item.order_id = self.id
        #     # item.cart_id = nil
        # end
        #save 
        cart.lineitems.update_all(order_id: self.id)
    end

    def total_order_price
        self.lineitems.to_a.sum do |item|
            item.total_price_of_each_item
        end
    end

    def self.order_search(email)
        where(email: email)
    end
    
end
