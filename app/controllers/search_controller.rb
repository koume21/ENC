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
    
    p params[:school][:id] #Profileのschool_id
    p params[:grade] #Profileのgrade
    p params[:club][:id] #Profileのclub_id
    p params[:type][:id] #Profileのtype_id

    arr_str = []

    @profiles = Profile.where(school_id: params[:school][:id]) 
    @profiles = Profile.where(grade: params[:grade]) 
    @profiles = Profile.where(club_id: params[:club][:id])
    @profiles = Profile.where(type_id: params[:type][:id])


    # @search = School.where(id: @school)
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
