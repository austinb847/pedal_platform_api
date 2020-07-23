class PedalsController < ApplicationController
  def index
    @pedals = Pedal.all
    json_response(@pedals)
  end

  def show
    @pedal = Pedal.find(params[:id])
    json_response(@pedal)
  end


  private
  def pedal_params
    params.permit(:name, :price, :brand, :description, :quantity, :featured, :image_url, :kind, :category, :country_origin)
  end

end