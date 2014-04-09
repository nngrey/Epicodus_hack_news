class CommentsController < ApplicationController
  def create
    @link = Link.find(params[:link_id])
    @comment = @link.comments.new(comment_params)
    if @comment.save
      redirect_to :back
    else
      render "links/show.html.erb"  #link_path(@link, @com) needs to be fixed
    end
  end

private
  def comment_params
    params.require(:comment).permit(:description)
  end
end
