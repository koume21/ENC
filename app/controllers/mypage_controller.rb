class MypageController < ApplicationController
  def profile
    @user = User.where("id = 1")
    @user_profile = Profile.where("user_id = 1")
  end
end
