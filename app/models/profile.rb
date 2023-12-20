class Profile < ApplicationRecord
    belongs_to :user
    has_many :schools
    has_many :clubs
    has_many :types
    GRADES = {1=>"1年",2=>"2年",3=>"3年"}
end
