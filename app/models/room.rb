class Room < ApplicationRecord
    has_many :room_member
    has_many :chat
end
