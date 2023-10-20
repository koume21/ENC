class NewAccountController < ApplicationController
  def new
  end

  def create
    @user = User.new(login: params[:user_id],password: params[:password])
    if @user.save
      @profile = Profile.new(user_id: @user.id)
      if @profile.save
        redirect_to '/mypage/profile'
      end
    else
      render :new
    end
  end

end