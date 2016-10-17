json.extract! lesson, :id, :name, :description, :video_url, :topic_id, :created_at, :updated_at
json.url lesson_url(lesson, format: :json)