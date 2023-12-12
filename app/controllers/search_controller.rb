class SearchController < ApplicationController
  before_action :login_session

  def index
    @good_ranks = User.find(Good.group(:good_id).order('count(good_id) desc').limit(3).pluck(:good_id))
    @schools = School.all
    @clubs = Club.all
    @types = Type.all
    @profiles = []
    @my_good = Good.where(user_id:session[:login_id])
  end
  def search
    @good_ranks = User.find(Good.group(:good_id).order('count(good_id) desc').limit(3).pluck(:good_id))
    @schools = School.all
    @clubs = Club.all
    @types = Type.all
    
    arr_str = {}
    arr_str[:school_id] = params[:school][:id] if params[:school][:id].present?
    arr_str[:grade] = params[:grade] if params[:grade].present?
    arr_str[:club_id] = params[:club][:id] if params[:club][:id].present?
    arr_str[:type_id] = params[:type][:id] if params[:type][:id].present?
    @profiles = Profile.where(arr_str)

    render :index
  end

  def friend_create
    @new_friend = Friend.new(user_id: session[:login_id],friend_id: params[:friend_id])
    @new_friend.save
    @pertner_friend = Friend.new(user_id: params[:friend_id],friend_id: session[:login_id])
    @pertner_friend.save
    redirect_to '/search/index'
  end
  private
  def login_session
    if session[:login_id] == nil
      flash[:notice] = 'ログインしていません'
      redirect_to '/'
    end
  end
end
