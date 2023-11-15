class Good < ApplicationRecord
    belongs_to :user
    belongs_to :good_user, class_name: "User", foreign_key: "good_id"
    def good_by?(user)
        good.exists?(user_id: user.id)
    end
end

