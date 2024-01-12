class SearchController < ApplicationController
  before_action :login_session

  def index
    @schools = School.all
    @clubs = Club.all
    @types = Type.all
    @profiles = []
  end
  
  def search
    @schools = School.all
    @clubs = Club.all
    @types = Type.all
    @my_good = Good.where(user_id:session[:login_id])
    @user = User.find(session[:login_id])
    
    @login_or_user_name = params[:login_or_user_name]
    @school_id = params[:school][:id]
    @grade = params[:grade]
    @club_id = params[:club][:id]
    @type_id = params[:type][:id]
    
    arr_str = {}
    arr_str[:school_id] = @school_id if @school_id.present?
    arr_str[:grade] = @grade if @grade.present?
    arr_str[:club_id] = @club_id if @club_id.present?
    arr_str[:type_id] = @type_id if @type_id.present?
    
    @profiles = Profile.where(arr_str)
    @profiles = @profiles.joins(:user).where("users.id <> ? ", session[:login_id])
    @profiles = @profiles.joins(:user).where("(users.login LIKE ? OR profiles.user_name LIKE ?)", "%#{@login_or_user_name}%", "%#{@login_or_user_name}%") if @login_or_user_name.present?
    
    render :index
  end

  def ranking
    @good_ranks = User.find(Good.group(:good_id).order('count(good_id) desc').limit(5).pluck(:good_id))
    @my_good = Good.where(user_id:session[:login_id])
    @login_id = session[:login_id]
    @user = User.find(session[:login_id])
    render layout: false
  end

  private
  def login_session
    if session[:login_id] == nil
      flash[:notice] = 'ログインしていません'
      redirect_to '/'
    end
  end
end
