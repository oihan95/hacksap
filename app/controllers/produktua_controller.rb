class ProduktuaController < ApplicationController
	def new
    @produktua = Produktua.new
  end

  def create
    @produktua = current_user.produktuas.build(products_param)
    if @produktua.save
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
    @produktua = Produktua.find(params[:id])
  end


  private
  def products_param
    params.require(:produktua).permit(:materiala,:testua, :erreferentzia, :kantitatea)
  end
end
