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
    @product = Product.new(product_params)
    
    respond_to do |format|
      if @product.save
        format.json { render json: @product }
      else
        format.json { render json: @product.errors }
      end
    end
  end

  def edit
    @product = Product.find_by_id(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    if @product.update_attributes(product_params)
      flash[:notice] = "#{@product.name} updated"
      redirect_to products_path
    else
      flash[:error] = "Could not update product"
      redirect_to products_path
    end
  end

  def new
    @product = Product.new
    respond_to do |format|
      format.html #new.haml
      format.json { render json: @product }
    end
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
  
  private
    def product_params
      params.require(:product).permit(:name, :value)
    end

end
