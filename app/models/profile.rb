class Profile < ApplicationRecord
    belongs_to :user
    belongs_to :school
    belongs_to :club
    belongs_to :type
end
