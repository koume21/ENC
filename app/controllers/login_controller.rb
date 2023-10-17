class LoginController < ApplicationController
  def login
  end

  def create
    user = User.find_by(login: params[:user_id])
    if user && user.password == params[:password] then
      redirect_to '/mypage/profile'
    else
      flash.now[:danger] = "ユーザーＩＤかパスワードが違います"
      render :login
    end
  end

  private
  def user_params
    params.require(:user).permit(:user_id, :password)
  end
end
