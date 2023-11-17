class Room < ApplicationRecord
    has_many :room_members
    has_many :chats
end
