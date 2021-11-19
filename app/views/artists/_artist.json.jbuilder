json.extract! artist, :id, :name, :permalink, :formed_at, :verified, :verified_at, :avatar, :cover_photo, :created_at, :updated_at
json.url artist_url(artist, format: :json)
