class ProductsController < ApplicationController
  def index
    if params[:type].present?
      @products = Product.all.where('category = ?', params[:type]).order('created_at DESC')
    else
      @products = Product.all.order('created_at DESC')
    end
  end

  def show
    @product = Product.find(params[:id])
  end

  private

  def product_params
    params.require(:product).permit(:tilte, :body)
  end
end
