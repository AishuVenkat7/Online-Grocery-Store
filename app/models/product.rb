class Product < ApplicationRecord
    validates(:name, :description, :image, :price, presence: true)
    validates(:price, numericality: {greater_than_or_equal_to: 0.5})
    validates(:name, uniqueness: true)
    validates(:image, format: { with: %r{\.(gif|jpg|png)\Z}i, 
        message: "File must be in gif,jpg,png format"})

    has_many :lineitems

    before_destroy(:make_sure_no_line_items)

    scope :by_category, ->(category) { where(category: category) if category.present? }

    def make_sure_no_line_items
        if self.lineitems.empty?
            return true
        else
            return false
        end

    end

    def self.search(search_all)
        name_or_description_search = "%#{search_all}%"
        price_search = search_all.to_f
        Product.where('name LIKE ? OR description LIKE ? OR price = ?', 
        name_or_description_search, name_or_description_search, price_search)
    end
end
