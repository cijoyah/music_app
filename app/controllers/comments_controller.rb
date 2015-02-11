class CommentsController < ApplicationController

  def create
    @track = Track.find(params[:track_id])
    @comment = @track.comments.create(params[:comment].permit(:content, :rating))
    redirect_to track_path(@track)
  end

  def update
  end

  def destroy
    @track = Track.find(params[:track_id])
    @comment = @track.comments.find(params[:id])
    @comment.destroy
    redirect_to track_path(@track)
  end

end
