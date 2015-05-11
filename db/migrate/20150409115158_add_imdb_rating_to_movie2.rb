class AddImdbRatingToMovie2 < ActiveRecord::Migration
  def change
    add_column :movie2s, :imdb_rating, :float
  end
end
