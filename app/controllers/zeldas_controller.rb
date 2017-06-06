class ZeldasController < ApplicationController

  def index
    @zeldas = Zelda.all
  end

  def create
    @zelda = Zelda.create(
                          game: params[:game],
                          character: params[:character]
                          )
    render :show
  end

  def show
    @zelda = Zelda.find(params[:id])
  end

  def edit


  def destroy
    zelda = Zelda.find(params[:id])
    zelda.destroy
                       
    redirect_to "/zeldas.json"
  end

end
