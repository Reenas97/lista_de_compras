class ProductsController < ApplicationController
  def show
    @product = Product.find(params[:id])
  end

  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create 
    @product = Product.new(products_params)
    if @product.save
      redirect_to @product
    else
      render :new
    end
  end
  
  def edit 
    @product = Product.find(params[:id])
  end

  def update
     @product = Product.find(params[:id])
    if @product.update(products_params)
      redirect_to @product, notice: 'Ebaaa salvou'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy 
     @product = Product.find(params[:id])
     @product.destroy
     redirect_to products_path
  end



  private

  def products_params
    params.require(:product).permit(:name, :price, :quantity)
  end
end
