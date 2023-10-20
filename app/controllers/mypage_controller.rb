class MypageController < ApplicationController
  def profile
    @user = User.find(1)
    @profile = @user.profile
  end

  def update
    profile = Profile.find_by(user_id: 1)

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
