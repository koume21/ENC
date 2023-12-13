class Profile < ApplicationRecord
    belongs_to :user
    belongs_to :school
    belongs_to :club
    belongs_to :type
    GRADES = {1=>"1年",2=>"2年",3=>"3年"}
end
