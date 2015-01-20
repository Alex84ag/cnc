class RemoveProductionYearFromMovies < ActiveRecord::Migration
  def change
    remove_column :movies, :production_year, :integer
  end
end
