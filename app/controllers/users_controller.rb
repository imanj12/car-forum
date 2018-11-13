class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @recents = @user.recent_five_posts
  end

end
