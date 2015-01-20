class RemoveImdbIdFromMovies < ActiveRecord::Migration
  def change
    remove_column :movies, :imdb_id, :integer
  end
end
