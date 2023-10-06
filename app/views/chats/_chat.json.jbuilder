json.extract! chat, :id, :room_id, :user_id, :message, :created_at, :updated_at
json.url chat_url(chat, format: :json)
