class SeoulsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]
  def index
    @seouls = Seoul.all    
  end

  def show
    @seoul = Seoul.find(params[:id])
    @comment = Comment.new
    @photo = Photo.new
  end

  



end
