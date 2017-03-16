class CommentsController < ApplicationController
  before_action :set_comments, only: [:show, :update, :destroy]

  def index
    @event = Event.find(params[:event_id])
    @comments = @event.comments
    render json: @comments
  end

  def show
    @comments = Comment.where(event_id: params[:id])
    render json: @comments
  end

  def create
    @comment = Comment.create!(comment_params)
    render json: @comment
  end

  def update
    @comment.update!(comment_params)
    render json: @comment
  end

  def destroy
    @comment.destroy
    render nothing: true
  end

  private
    def set_comments
      @comment = Comment.find(params[:id])
    end

    def comment_params
      params.require(:comment).permit(:comment, :author, :event_id)
    end
end
