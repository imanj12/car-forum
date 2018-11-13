class DiscussionsController < ApplicationController

  def new
    @discussion = Discussion.new
  end

  def show
    @discussion = Discussion.find(params[:id])
    # @post = @discussion.posts.build
  end

  def create
    @discussion = Discussion.create(discussion_params)
    redirect_to category_path(@discussion.category)
  end

  private

  def discussion_params
    params.require(:discussion).permit(:title, :category_id)
  end

end
