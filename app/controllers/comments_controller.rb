class CommentsController < ApplicationController
  
  def create
    @comment = Comment.new(comment_params)

    if @comment.save
      render json: @comment
    else
      render json: { message: @comment.errors }, status: 400
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :rating, :user_id, :book_id)
  end
end
