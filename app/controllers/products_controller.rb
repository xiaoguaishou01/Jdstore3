class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def add_to_cart
    current_cart.add_product_to_cart(@product)
    flash[:notice] = "成功加入购物车"
    redirect_to :back
    #@product = Product.find(params[:id])
    #redirect_to :back, notice: "测试加入购物车"
  end
end
