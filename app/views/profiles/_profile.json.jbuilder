json.extract! profile, :id, :user_id, :user_name, :school_id, :profile_image, :grade, :club_id, :type_id, :comments, :created_at, :updated_at
json.url profile_url(profile, format: :json)
