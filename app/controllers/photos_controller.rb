class PhotosController < ApplicationController
  before_action :set_photo, only: [ :update, :destroy]

  def index
    @event = Event.find(params[:event_id])
    @photos = @event.photos
    render json: @photos
  end

  def show
    @photos = Photo.where(event_id: params[:id])
    render json: @photos
  end

  def create
    @photo = Photo.create!(photo_params)
    render json: @photo
  end

  def update
    @photo.update!(photo_params)
    render json: @photo
  end

  def destroy
    @photo.destroy
    render nothing: true
  end

  private
  def set_photo
    @photo = Photo.find(params[:id])
  end

  def photo_params
    params.require(:photo).permit(:comment, :title, :event_id, :img_url)
  end
end
