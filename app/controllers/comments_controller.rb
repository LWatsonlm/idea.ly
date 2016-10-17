class CommentsController < ApplicationController

  def create
    @post = Post.find params[:post_id]
    @comment = @post.comments.create(comment_params)
    redirect_to post_path(@post)
  end

  def edit
    @post = Post.find params[:post_id]
    @comment = Comment.find params[:id]
  end

  def destroy
    @post = Post.find params[:post_id]
    @comment = @post.comments.find params[:id]
    if @comment.user_id == current_user
        @comment.destroy
    else
      flash[:alert] = "Only the author of the comment can delete."
    end
    redirect_to post_path(@post)
  end

  private
    def comment_params
      params.require(:comment).permit(:title, :body)
    end
end
