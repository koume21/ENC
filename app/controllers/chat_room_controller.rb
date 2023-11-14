class ChatRoomController < ApplicationController
  before_action :login_session
  def chat_page
    # 全ユーザーの取得
    @user = User.all
    # 全ルームの取得
    @rooms = Room.all
    # ログインＩＤが入っているルームの取得
    @user_room = RoomMember.where("user_id = ?",session[:login_id])
    # ログインユーザーがチャットしている相手を格納する配列
    @user_name = []
    @user_id = []
    @messages = Chat.all
    # ユーザーがルームに参加している場合
    if @user_room.present?
      @user_room.each do |room|
        rm = RoomMember.where("room_id = ?",room.room_id)
        rm.each do |m|
          if m.user_id != room.user_id
            usr = User.find(m.user_id)
            @user_id << usr.id
            @user_name << usr.profile.user_name
          end
        end
      end
    end
  end

  def show
    @messages = Chat.all

    redirect_to chat_room_chat_page_path
  end
  private
  def login_session
    if session[:login_id] == nil
      flash[:notice] = 'ログインしていません'
      redirect_to '/'
    end
  end
end

# クリックしたユーザーのＩＤを取得
# 二人が参加しているルームのroomIDを取得

# 画面遷移







