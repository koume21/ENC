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
    @my_good = Good.where(user_id:session[:login_id])
    
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
    @profiles = @profiles.joins(:user).where("(users.login LIKE ? OR profiles.user_name LIKE ?)", "%#{@login_or_user_name}%", "%#{@login_or_user_name}%") if @login_or_user_name.present?
    
    render :index
  end

  def friend_create
    user = User.find(session[:login_id])
    pertner = User.find(params[:friend_id])
    room_name = user.profile.user_name + "&" + pertner.profile.user_name

    new_friend = Friend.new(user_id: session[:login_id],friend_id: params[:friend_id])
    pertner_friend = Friend.new(user_id: params[:friend_id],friend_id: session[:login_id])
    new_friend.save
    pertner_friend.save
    new_room = Room.new(name: room_name)
    new_room.save
    member_my_add = RoomMember.new(room_id: new_room.id, user_id: session[:login_id])
    member_pertner_add = RoomMember.new(room_id: new_room.id, user_id: params[:friend_id])
    member_my_add.save
    member_pertner_add.save
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
