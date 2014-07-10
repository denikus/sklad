class ProductsController < ApplicationController
  def index
    @categories = Category.where(ancestry: nil)

    if params[:category_id].present?
      ap @products = Product.where(:category_id => params[:category_id]).all
    end
  end
end
