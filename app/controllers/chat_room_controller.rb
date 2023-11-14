class ChatRoomController < ApplicationController
  before_action :login_session
  def chat_page
    @user = User.all
    @rooms = Room.all
    @user_room = RoomMember.where("user_id = 1")
    @user_name = []
    if @user_room.present?
      @user_room.each do |r|
        rm = RoomMember.where("room_id = ?",r.room_id)
        rm.each do |m|
          if m.user_id != r.user_id
            usr = User.find(m.user_id)
            @user_name << usr.profile.user_name
          end
        end
      end
    end
  end


  def show
    @messages = Chat.all
  end
  private
  def login_session
    if session[:login_id] == nil
      flash[:notice] = 'ログインしていません'
      redirect_to '/'
    end
  end
end
