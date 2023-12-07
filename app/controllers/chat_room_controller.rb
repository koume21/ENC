class ChatRoomController < ApplicationController
  before_action :login_session
  def chat_page
    @messages = nil
    session[:room_id] = nil
    @room_id = nil
    # ユーザーがルームに参加している場合
    @rooms = Room.joins(:room_members).where("room_members.user_id = ?", session[:login_id])
  end

  def show
    @room_id = params[:room_id]
    session[:room_id] = @room_id
    @rooms = Room.joins(:room_members).where("room_members.user_id = ?", session[:login_id])
    @messages = Chat.where(room_id: @room_id)
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







