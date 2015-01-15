json.array!(@movie_infos) do |movie_info|
  json.extract! movie_info, :id, :movie_id, :info_type_id, :info
  json.url movie_info_url(movie_info, format: :json)
end
