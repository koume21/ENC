class Profile < ApplicationRecord
    belongs_to :user
    belongs_to :school, optional: true
    belongs_to :club, optional: true
    belongs_to :type, optional: true
    
    GRADES = {1=>"1年",2=>"2年",3=>"3年"}
end
