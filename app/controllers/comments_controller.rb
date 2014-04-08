class CommentsController < ApplicationController
  def create
    # @comment = Link.comments.new(comment_params)

    @link = Link.find(params[:link_id])
    @comment = @link.comments.new(comment_params)

    # @link = Link.find(params[:id])
    # @comment = Comment.new(comment_params)
    # @link.comments << @comment
    if @comment.save
      redirect_to :back
    else
      render link_path
    end
  end

#   def show
#     @link = Link.find(params[:id])
#   end

#   def edit
#     @link = Link.find(params[:id])
#   end

#   def update
#     @link = Link.find(params[:id])
#     if @link.update(link_params)
#       redirect_to link_path
#     else
#       render edit_link_path
#     end
#   end

#   def destroy
#     @link = Link.find(params[:id])
#     @link.destroy
#     redirect_to '/'
#   end

private
  def comment_params
    params.require(:comment).permit(:description)
  end
end
