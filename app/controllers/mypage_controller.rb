class MypageController < ApplicationController
  def profile
    @user = User.find(1)
    @user.update(profile_params)
  end

  def update
    @profile = Profile.find_by(user_id: 1)

  end
  private
  def profile_params
    params.require(:profile).permit(:user_name, :school, :profile_image, :grade, :club, :type, :comments)
  end
end
