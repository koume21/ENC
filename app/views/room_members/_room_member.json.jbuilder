json.extract! room_member, :id, :room_id, :user_id, :created_at, :updated_at
json.url room_member_url(room_member, format: :json)
