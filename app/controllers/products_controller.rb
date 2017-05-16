class ProductsController< ApplicationController

  def new
    @product = Product.new
  end
  def create
    @product = Product.new(products_param)

  end

  private
  def products_param
    params.require(:material).permit(:text, :reference, :quantity)
  end
end