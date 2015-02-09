class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.where(id: params[:id]).first #use this instead of find so you don't get red screen if it doesn't find anything
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(params.require(:user).permit(:username, :email, :dob))
    if @user.save
      redirect_to users_path
    else
      render 'new'
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
