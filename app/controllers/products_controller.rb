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

  def show
    @product = Product.find(params[:id])
  end

  private
  def products_param
    params.require(:product).permit(:material,:text, :reference, :quantity)
  end
end