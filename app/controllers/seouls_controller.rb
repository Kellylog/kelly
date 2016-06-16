class SeoulsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]
  def index
    @seouls = Seoul.all
    
  end

  def show
    @seoul = Seoul.find(params[:id])
    @comment = Comment.new
  end

  def seoul_params
  params.require(:seoul).permit(:name, :description, :address)
end

def create
    @seoul = Seoul.find_by_id(params[:seoul_id])
    return render_not_found if @seoul.blank?

    @seoul.comments.create(comment_params.merge(user: current_user))
    
    redirect_to seoul_path(@seoul)
  end
  
  
  private
  

  def comment_params
    params.require(:comment).permit(:message)
  end

end
