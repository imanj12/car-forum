class PostsController < ApplicationController

  def new
    @post = Post.new
  end

  def create
    @post = Post.create(post_params)
    redirect_to discussion_path(@post.discussion)
  end

  def destroy
    @post = Post.find(params[:id]).destroy
    redirect_to discussion_path(@post.discussion)
  end

  private

  def post_params
    params.require(:post).permit(:user_id, :discussion_id, :content)
  end

end
