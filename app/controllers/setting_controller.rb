class SettingController < ApplicationController
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
  def user_params
    params.require(:user).permit(:login,:password)
  end
end
