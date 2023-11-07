class Chat < ApplicationRecord
    belongs_to :room
    after_create_commit {
        MeaasageBroadcastJob.perform_later self
    }
end
