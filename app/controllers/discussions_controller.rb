class DiscussionsController < ApplicationController

  def new
    @discussion = Discussion.new
  end

  def show
    if Discussion.where(id: params[:id]).exists?
      @discussion = Discussion.find(params[:id])
      @discussion.punch(request)
    else
      redirect_to categories_path
    end
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
