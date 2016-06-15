class SeoulsController < ApplicationController
  def index
    @seouls = Seoul.all
    
  end

  def show
    @seoul = Seoul.find(params[:id])
  end

  def seoul_params
  params.require(:seoul).permit(:name, :description, :address)
end

end
