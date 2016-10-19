class PostsController < ApplicationController

def index
  @posts = Post.all
end

def new
  @post = Post.new
end

def show
  @post = Post.find params[:id]
end

def edit
  @post = Post.find params[:id]
end

def create
  @post = Post.create!(post_params.merge(user: current_user))
  redirect_to post_path(@post)
end

def update
  @post = Post.find params[:id]

  if @post.user == current_user
    @post.update(post_params)
  else
    flash[:alert] = "Only the author of the post can edit this post."
  end
  redirect_to @post
end

def destroy
  @post = Post.find params[:id]
  if @post.user == current_user
      @post.destroy
  else
    flash[:alert] = "Only the author of the post can delete."
  end
  redirect_to posts_path
end

def upvote
  @post = Post.find params[:id]
  @post.upvote_by current_user
  redirect_to :back
end

def downvote
  @post = Post.find params[:id]
  @post.downvote_by current_user
  redirect_to :back
end

private
  def post_params
    params.require(:post).permit(:title, :body, :topic)
  end

end
