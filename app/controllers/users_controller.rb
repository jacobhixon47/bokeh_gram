class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @images = Image.where(owner_id: @user.id)
  end
end
