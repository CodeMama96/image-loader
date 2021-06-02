class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    
  end

  def show
    @user = User.find(user_params)

  end

private
  def user_params
    params.require(:user).permit(:name, :avatar, documents: [])
  end
end
