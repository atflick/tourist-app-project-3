class LocationsController < ApplicationController
  before_action :set_location, only: [:show, :update, :destroy]

  def index
    @locations = Location.all
    render json: @locations
  end

  def show
    render json: @location
  end

  def create
    @location = Location.create!(location_params)
    render json: @location
  end

  def update
    @location.update!(location_params)
    render json: @location
  end

  def destroy
    @location.destroy
    render nothing: true
  end

  private
    # Callback to share common setup or constraints between actions.
    def set_location
      @location = Location.find(params[:id])
    end

    def location_params
      params.require(:location).permit(:city, :state, :country, :img_url)
    end
end
