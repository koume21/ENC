class Friend < ApplicationRecord
    belongs_to :user
    belongs_to :friend_user, class_name: "User", foreign_key: "friend_id"
end
