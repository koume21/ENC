class LoginController < ApplicationController
  def login
    session[:login_id] = nil
  end

  def create
    user = User.find_by(login: params[:user_id])
    if user && user.password == params[:password] then
      session[:login_id] = user.id
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
