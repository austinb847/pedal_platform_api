class PedalsController < ApplicationController
  def index
    @pedals = Pedal.all
    json_response(@pedals)
  end

  def show
    @pedal = Pedal.find(params[:id])
    json_response(@pedal)
  end

  def create
    @pedal = Pedal.create!(pedal_params)
    json_response(@pedal, :created)
  end

  def update
    @pedal = Pedal.find(params[:id])
    if @pedal.update!(pedal_params)
      render status: 200, json: {
        message: "Pedal Successfully Updated."
      }
    end
  end

  def destroy
    @pedal = Pedal.find(params[:id])
    if @pedal.destroy!
      render status: 200, json: {
        message: "This Pedal has been deleted Successfully."
      }
    end
  end


  private
  def pedal_params
    params.permit(:name, :price, :brand, :description, :quantity, :featured, :image_url, :kind, :category, :country_origin)
  end

end