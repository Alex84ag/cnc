json.array!(@movies) do |movie|
  json.extract! movie, :id, :tt_id, :imdb_id, :title, :production_year
  json.url movie_url(movie, format: :json)
end
