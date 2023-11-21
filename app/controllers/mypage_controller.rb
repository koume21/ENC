class MypageController < ApplicationController
  before_action :login_session
  def profile
    @schools = School.all
    @clubs = Club.all
    @types = Type.all
    login_id = session[:login_id]
    @user = User.find(login_id)
    @profile = @user.profile
    @goods = Good.where(user_id: login_id)
  end

  def update
    login_id = session[:login_id]
    profile = Profile.find_by(user_id: login_id)
    if profile.update(school_id: params[:school][:id],grade: params[:grade],club_id: params[:club][:id],type_id: params[:type][:name],)
      redirect_to mypage_profile_path,notice:"Update successed"
    else
      redirect_to mypage_profile_path,notice:"Update loss"
    end
  end
  private
  def set_user
    @user = User.find(params[:id])
  end
  def login_session
    if session[:login_id] == nil
      flash[:notice] = 'ログインしていません'
      redirect_to '/'
    end
  end
  # def profile_params
  #   params.require(:profile).permit(:user_name, :school_id, :profile_image, :grade, :club_id, :type_id, :comments)
  # end
end
