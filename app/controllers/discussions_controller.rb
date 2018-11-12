class DiscussionsController < ApplicationController

  def show
    @discussion = Discussion.find(params[:id])
    # @post = @discussion.posts.build
  end


end
