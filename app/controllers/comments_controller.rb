class CommentsController < ApplicationController
  def new
    @user = User.find(current_user.id)
    @image = Image.find(params[:image_id])
    @comment = @image.comments.new
  end

  def create
    @user = User.find(current_user.id)
    @image = Image.find(params[:image_id])
    @comment = @image.comments.new( comment_params )
    @comment.user_id = @user.id
    if @comment.save
      flash[:notice] = "Your comment has been posted!"
      redirect_to image_path(@image)
    else
      flash[:alert] = "There was a problem uploading your photo. Please try again."
      render :new
    end
  end

private
  def comment_params
    params.require(:comment).permit(:content)

  end
end
