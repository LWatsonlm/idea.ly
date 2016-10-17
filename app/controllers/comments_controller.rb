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

  private
    def comment_params
      params.require(:comment).permit(:title, :body)
    end

end
