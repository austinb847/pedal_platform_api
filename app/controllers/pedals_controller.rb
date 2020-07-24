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

  def random
    @pedal = Pedal.random_pedal
    json_response(@pedal)
  end

  def value
    @pedal = Pedal.value
    json_response(@pedal)
  end

  def standard
    @pedal = Pedal.standard
    json_response(@pedal)
  end

  def premium
    @pedal = Pedal.premium
    json_response(@pedal)
  end

  def featured
    @pedal = Pedal.featured
    json_response(@pedal)
  end

  def recent
    @pedal = Pedal.ten_most_recent
    json_response(@pedal)
  end


  private
  def pedal_params
    params.permit(:name, :price, :brand, :description, :quantity, :featured, :image_url, :kind, :category, :country_origin)
  end

end