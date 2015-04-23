json.array!(@tracks) do |track|
  json.extract! track, :id, :title, :artist_id, :album_id, :length
  json.url track_url(track, format: :json)
end
