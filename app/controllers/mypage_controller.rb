class MypageController < ApplicationController
  before_action :login_session
  def profile
    @schools = School.all
    @clubs = Club.all
    @types = Type.all
    login_id = session[:login_id]
    @user = User.find(login_id)
    @profile = @user.profile

    @goods = Good.where(user_id: login_id)
    @goods = @goods.where("good_id <> ?", login_id)
    @my_good = @goods
  end

  def create
  end
  def update
    login_id = session[:login_id]
    profile = Profile.find_by(user_id: login_id)
    school_id = params[:profile][:school_id]
    user_name = params[:profile][:user_name]
    grade = params[:profile][:grade]
    club_id = params[:profile][:club_id]
    type_id = params[:profile][:type_id]
    comments = params[:profile][:comments]

    image = params[:profile][:profile_image]
    if image.present?
      profile.profile_image = image.original_filename
      save_path = Rails.root.join("public/post_images/",profile.profile_image)
      File.open(save_path,"w+b") do |f|
         f.write(image.read)
      end
    end
    # image.read

    if profile.update(user_name: user_name,school_id: school_id,grade: grade,club_id: club_id,type_id: type_id,comments: comments)
      redirect_to mypage_profile_path,notice:"Update successed"
    else
      redirect_to mypage_profile_path,notice:"Update loss"
    end
  end

  private
  def set_user
    @user = User.find(params[:id])
  end
  def login_session
    if session[:login_id] == nil
      flash[:notice] = 'ログインしていません'
      redirect_to '/'
    end
  end
  # def profile_params
  #   params.require(:profile).permit(:user_name, :school_id, :profile_image, :grade, :club_id, :type_id, :comments)
  # end
end
