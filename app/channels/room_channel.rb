class RoomChannel < ApplicationCable::Channel
  def subscribed
    stream_from "room_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def speak(data)
    Chat.create!(
      room_id: data['room_id'].to_i,
      user_id: data['current_user_id'].to_i,
      message: data['message']
    )
  end
end
# data['room_id'].to_i,data['current_user_id'].to_i
