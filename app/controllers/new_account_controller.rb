class NewAccountController < ApplicationController
  def new
  end

  def create
    @user = User.new(params[:user_id],params[:password])

    respond_to do |format|
      if @user.save
        format.html { redirect_to '/mypage/profile', notice: "ユーザー登録完了" }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

end
