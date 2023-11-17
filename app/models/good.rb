class Good < ApplicationRecord
    belongs_to :user
    belongs_to :good_user, class_name: "User", foreign_key: "good_id"
    def do_good?(user)
        do_good.where(user_id: user.id).exists?
    end
end

