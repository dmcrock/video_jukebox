class CommentsController < ApplicationController
  def create
    @video = Video.find params[:video_id]
    @comment = @video.comments.build params[:comment]
    
    redirect_to @video
  end
end
