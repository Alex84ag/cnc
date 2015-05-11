class AddJsonToMovie2 < ActiveRecord::Migration
  def change
    add_column :movie2s, :imdb, :json
  end
end
