json.extract! profile, :id, :rock_style, :pop_style, :classical_style, :level, :user_id, :created_at, :updated_at
json.url profile_url(profile, format: :json)