class NewAccountController < ApplicationController
  layout 'notsidebar'
  def new
  end

  def create
    @user = User.new(login: params[:user_id],password: params[:password])
    if @user.save
      @profile = Profile.new(user_id: @user.id, user_name: params[:user_name])
      if @profile.save
        session[:login_id] = @user.id
        redirect_to '/mypage/profile'
      end
    else
      render :new
    end
  end

end