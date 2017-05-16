class ProductsController< ApplicationController

  def new
    @product = Product.new
  end
  def create
    @product = Product.new(products_param)
    if @product.save
      flash[:success] = "Produktua gehitu da"
      redirect_to :back
    else
      render 'new'
    end
  end

  def menu
    render 'menu/product'
  end
  private
  def products_param
    params.require(:material).permit(:text, :reference, :quantity)

  end
end