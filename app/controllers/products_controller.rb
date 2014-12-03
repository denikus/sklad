class ProductsController < ApplicationController
  def index
    @categories = Category.where(ancestry: nil)

    if params[:category_id].present?
      @products = Product.where(:category_id => params[:category_id]).all
      @category = Category.find(params[:category_id])
    end
  end
end
