class SessionsController < ApplicationController

  def new
  end

  def create
    @user = User.find_by(username: params[:username])
    if @user && @user.authenticate(params[:password])
      cookies[:user_id] = @user.id
      redirect_to categories_path
    else
      flash.notice = 'No user found with that name/password combination'
      redirect_to login_path
    end
  end

  def destroy
    cookies.clear
    redirect_to login_path
  end

end
