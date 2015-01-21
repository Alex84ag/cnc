json.array!(@movie1s) do |movie1|
  json.extract! movie1, :id, :tt_id
  json.url movie1_url(movie1, format: :json)
end
