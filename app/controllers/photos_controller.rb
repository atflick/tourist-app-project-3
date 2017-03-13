class PhotosController < ApplicationController
  before_action :set_photo, only: [:show, :update, :destroy]

  def index
    @photos = Photo.all
    render json: @photos
  end

  def show
    render json: @photo
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
