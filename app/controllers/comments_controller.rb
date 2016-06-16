class CommentsController < ApplicationController
  before_action :authenticate_user!, only: [:create]

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

