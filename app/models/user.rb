class User < ApplicationRecord
    has_one :profile
    has_many :good
    has_many :room_member
end
