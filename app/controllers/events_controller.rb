class EventsController < ApplicationController
  before_action :set_event, only: [:show, :update, :destroy]

  def index
    @events = Event.all
    render json: @events
  end

  def show
    @events = Event.all
    render json: @event
  end

  def create
    @event = Event.create!(event_params)
    render json: @event
  end

  def update
    @event.update!(event_params)
    render json: @event
  end

  def destroy
    @event.destroy
    render nothing: true
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event
      @event = Event.find(params[:id])
    end

    def event_params
      params.require(:event).permit(:name, :address, :category, :rating, :description, :time, :date, :phone_number, :map_url, :img_url, :location_id)
    end
end
