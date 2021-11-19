json.extract! track, :id, :url, :name, :credits, :available, :created_at, :updated_at
json.url track_url(track, format: :json)
