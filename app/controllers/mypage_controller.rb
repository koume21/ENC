class MypageController < ApplicationController
  def profile
    @user = User.find(1)
    @profile = @user.profile
  end

  def update
    profile = Profile.find_by(user_id: 1)
    if profile.update(profile_params)
      redirect_to '/'
    else
      redirect_to '/mypage/profile'
    end
  end
  private
  def profile_params
    params.require(:profile).permit(:user_name, :school, :profile_image, :grade, :club, :type, :comments)
  end
end
