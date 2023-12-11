class ShopperController < ApplicationController
    include(CurrentCart)
    before_action(:set_cart)
  def index
    # @allProducts = Product.order(:name)

    @allProducts = if params[:search]
                        Product.search(params[:search])
                    else
                        Product.by_category(params[:category]).all
                    end
    end

  def show
    @product = Product.find(params[:id])
  end
end
