json.array!(@movies) do |movie|
  json.extract! movie, :id, :tt_id
  json.url movie_url(movie, format: :json)
end
