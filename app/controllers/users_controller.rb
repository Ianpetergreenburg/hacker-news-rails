class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
  end

  def create
    @user = User.create(user_params)
    if @user.persisted?
      redirect_to action: "show", id: @user.id
    else
      render "new"
    end
  end

  def login

  end

  def logout

  end

  def destroy

  end


  def edit

  end

  def update

  end

  private

  def user_params
    params.require(:user).permit(:password, :username, :email)
  end
end

