class User < ApplicationRecord
    has_one :profile
    has_many :good
    has_many :room_member
    has_many :friend

    def friend?(friend_id)
       Friend.find_by(user_id: self.id, friend_id: friend_id).present?
    end
end
