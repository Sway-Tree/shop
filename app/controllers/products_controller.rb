class ProductsController < ApplicationController

  def show
  		@category = Category.find(params[:category_id])
  		@product = @category.products.find(params[:id])
	end

  def index
      @category = Category.find(params[:category_id])
      @products = @category.products
  end

	
end
