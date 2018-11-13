class SessionsController < ApplicationController

  def new
  end

  def create
    @user = User.find_by(username: params[:username])
    if @user
      cookies[:user_id] = @user.id
      redirect_to categories_path
    else
      flash.notice = 'That user does not exist'
      render :new
    end
  end

  def destroy
    cookies.clear
    redirect_to login_path
  end

end
