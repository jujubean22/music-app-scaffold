json.extract! album, :id, :name, :released, :released_at, :cover_art_url, :length, :kind, :created_at, :updated_at
json.url album_url(album, format: :json)
