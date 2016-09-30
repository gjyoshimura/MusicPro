json.extract! lesson, :id, :title, :description, :video_url, :author, :topic_id, :created_at, :updated_at
json.url lesson_url(lesson, format: :json)