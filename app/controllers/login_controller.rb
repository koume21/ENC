class LoginController < ApplicationController
  def login
    
  end

  def create
    user = User.find_by(user_id: params[:user_id].downcase)
    if user && user.authenticate(params[:password])
      log_in(user)
      redirect_to profile_path(user)
    else
      flash.now[:danger] = 'メールアドレスかパスワードが間違っています。'
      render 'new'
    end
  end

  private
  def user_params
    params.require(:user).permit(:user_id, :password)
  end
end
