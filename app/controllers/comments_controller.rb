class CommentsController < ApplicationController
def create
  before_action :set_comments, only: [:show, :update, :destroy]


  def create
    @comments = Comments.create!(comments_params)
    render json: @comments
  end

  def update
    @comments.update!(comments_params)
    render json: @comments
  end

  def destroy
    @comments.destroy
    render nothing: true
  end

  private
    def set_comments
      @event = Comments.find(params[:id])
    end

    def comments_params
      params.require(:comments).permit(:name, :time,:date, :location_id)
    end
end
