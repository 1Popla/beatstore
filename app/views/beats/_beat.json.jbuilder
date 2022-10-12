json.extract! beat, :id, :title, :bpm, :genre, :description, :scale, :price, :created_at, :updated_at
json.url beat_url(beat, format: :json)
