class PedalsController < ApplicationController
  def index
    @pedals = Pedal.all
    json_response(@pedals)
  end

end