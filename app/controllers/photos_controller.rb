class PhotosController < ApplicationController
  before_action :authenticate_user!, only: [:create]

  def create
    @seoul = Seoul.find(params[:seoul_id])
    @seoul.photos.create(photo_params)
    redirect_to seoul_path(@seoul)
  end

  private

  def photo_params
    params.require(:photo).permit(:picture, :caption)
  end
end
