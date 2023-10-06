class LoginController < ApplicationController
  def new
    @users = User.new
  end
  def index
    @users = User.all
  end

  def create
    @users = User.new(user_params)
    @users.save
  end

  private
  def user_params
    params.require(:user).permit(:user_id, :password)
  end
end
