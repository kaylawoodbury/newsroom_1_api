class Api::LocationsController < ApplicationController
  def index 
    locations = Location.all
    render json: locations, each_serializer: LocationIndexSerializer
  end 
end
