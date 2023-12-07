class Good < ApplicationRecord
    belongs_to :user
    belongs_to :good_user, class_name: "User", foreign_key: "good_id"
    def self.do_good?(good_id)
        self.where(good_id: good_id).exists?
    end
end

