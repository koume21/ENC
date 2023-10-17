class NewAccountController < ApplicationController
  def new
  end

  def create
    @user = User.new(params[:user_id],params[:password])
    if @user.save
      redirect_to 'mypage/profile'
    else
      render :new
  end

end
