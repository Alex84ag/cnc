class AddGenreToMovie1 < ActiveRecord::Migration
  def change
    add_column :movie1s, :genre, :string
  end
end
