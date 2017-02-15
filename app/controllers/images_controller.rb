class ImagesController < ApplicationController
  def new
    @image = Image.new
  end

  def create
    @image = Image.new( image_params )
    if @image.save
      @image.owner_id = current_user.id
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
