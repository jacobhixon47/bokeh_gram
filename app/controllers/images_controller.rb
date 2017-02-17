class ImagesController < ApplicationController
  def show
    @image = Image.find(params[:id])
    @owner = User.find(@image.user_id)
    @comments = @image.comments.all
  end

  def new
    @user = User.find(current_user.id)
    @image = @user.images.new
  end

  def create
    @user = User.find(current_user.id)
    @image = @user.images.new( image_params )
    if @image.save
      flash[:notice] = "Your photo has been successfully uploaded!"
      redirect_to :controller => 'home'
    else
      flash[:alert] = "There was a problem uploading your photo. Please try again."
      render :new
    end
  end

private
  def image_params
    params.require(:image).permit(:caption, :picture)

  end
end
