class NewAccountController < ApplicationController
  def new
  end

  def create
    @user = User.new(login: params[:user_id],password: params[:password])
    if @user.save
      @profile = Profile.new(user_id: params[:id])
      if @profile.save
        redirect_to '/mypage/profile'
      else
        p 'a'
      end
    else
      render :new
    end
  end

end
