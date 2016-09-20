json.extract! instrument, :id, :name, :image_path, :created_at, :updated_at
json.url instrument_url(instrument, format: :json)