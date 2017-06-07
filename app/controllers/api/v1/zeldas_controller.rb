class Api::V1::ZeldasController < ApplicationController

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
  end


  def destroy
    zelda = Zelda.find(params[:id])
    zelda.destroy
                       
    redirect_to "/zeldas.json"
  end

end
