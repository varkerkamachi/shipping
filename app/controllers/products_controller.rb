class ProductsController < ApplicationController
  def index
    @products = Product.all
    
    respond_to do |format|
      format.html #index.haml
      format.json{ render json: @products }
    end
  end

  def show
  end

  def create
  end

  def edit
  end

  def update
  end

  def new
    @product = Product.new
  end

  def destroy
    @product = Product.find_by_id(params[:id])
    if @product.destroy
      respond_to do |format|
        format.html #index.haml
        format.json{ render json: @products }
      end
    else
      redirect_to products_path
    end
  end
end
