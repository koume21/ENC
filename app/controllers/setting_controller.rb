class SettingController < ApplicationController
  before_action :login_session
  def index
    @setting = User.find(1)
  end

  def update
    user = User.find(1)
    if user.update(user_params)
      redirect_to setting_index_path
      p "a"
    else
      p "b"
    end
  end

  def destory
  end
  private
  def login_session
    if session[:login_id] == nil
      flash[:notice] = 'ログインしていません'
      redirect_to '/'
    end
  end
  def user_params
    params.require(:user).permit(:login,:password)
  end
end
