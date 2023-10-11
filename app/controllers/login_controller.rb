class LoginController < ApplicationController
  def login
    
  end

  def create
    user = User.find_by(login: params[:user_id])
    if user && user.passward == params[:password]  then
      redirect_to '/mypage/profile'
    else
      flash.now[:danger] = 'メールアドレスかパスワードが間違っています。'
      render 'login/login'
    end
  end

  private
  def user_params
    params.require(:user).permit(:user_id, :password)
  end
end
