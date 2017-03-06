json.extract! song, :id, :tid, :mxmid, :lyrics_hash, :created_at, :updated_at
json.url song_url(song, format: :json)