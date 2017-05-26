class ProduktuaController < ApplicationController

	def new
    @produktua = Produktua.new
  end

  def bilatu
    @produktua = Produktua.search(params[:search])
    render 'produktua/search'
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

  def destroy
    Produktua.find(params[:id]).destroy
    redirect_to '/menu'
  end

  def show
    @produktua = Produktua.find(params[:id])
  end

  def edit
    @produktua = Produktua.find(params[:id])
    render 'produktua/edit'
  end

  def update
    @produktua = Produktua.find(params[:id])
    if @produktua.update_attributes(products_param)
      flash[:success] = "Produktua eguneratuta"
      redirect_to :back
    else
      render 'produktua/edit'
    end
  end

  private
  def products_param
    params.require(:produktua).permit(:materiala,:testua, :erreferentzia, :kantitatea)
  end
end
