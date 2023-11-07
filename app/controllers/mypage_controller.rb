class MypageController < ApplicationController
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

    if profile.update(profile_params)
      redirect_to mypage_profile_path,notice:"Update successed"
    else
      redirect_to mypage_profile_path,notice:"Update loss"
    end
  end
  private
  def profile_params
    params.require(:profile).permit(:user_name, :school_id, :profile_image, :grade, :club_id, :type_id, :comments)
  end
end
