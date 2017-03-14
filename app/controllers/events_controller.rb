class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]

  # GET /events
  # GET /events.json
  def index
    @events = Event.all
    render json: @events
  end

  # GET /events/1
  # GET /events/1.json
  def show
    @events = Event.all
    render json: @event
  end

  # POST /events
  # POST /events.json
  def create
    @event = Event.create!(event_params)
    render json: @event

    respond_to do |format|
      if @event.save
        format.html { redirect_to @event, notice: 'Event was successfully created.' }
        format.json { render :show, status: :created, location: @event }
      else
        format.html { render :new }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /events/1
  # PATCH/PUT /events/1.json
  def update
    @event.update!(event_params)
    render json: @event
  end

  # GET /events/new
  def new
    @event = Event.new
  end

  # GET /events/1/edit
  def edit
  end


  # DELETE /events/1
  # DELETE /events/1.json
  def destroy
    @event.destroy
    render nothing: true
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event
      @event = Event.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def event_params
      params.require(:event).permit(:name, :address, :category, :rating, :description, :time, :date, :phone_number, :map_url, :img_url, :location_id)
    end
end
