class SessionsController < ApplicationController
  def login_form
    @user = User.new
    render "login_form"
  end

  def login
    @user = User.find_by(username: login_params[:username])
    if @user && @user.authenticate(login_params[:password])
      session[:user_id] = @user.id
      redirect_to posts_url
    else
      @user = nil
      render "login_form"
    end
  end

  def logout
    session[:user_id] = nil
    redirect_to posts_url
  end

  private

  def login_params
    params.require(:session).permit(:username, :password)
  end
end
