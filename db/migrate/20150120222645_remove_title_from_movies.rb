class RemoveTitleFromMovies < ActiveRecord::Migration
  def change
    remove_column :movies, :title, :string
  end
end
