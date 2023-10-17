class NewAccountController < ApplicationController
  def new
  end

  def create    
    @user = User.new(login: params[:user_id],password: params[:password])
    if @user.save
      redirect_to '/mypage/profile'
    else
      render :new
    end
end
