class AddPlotToMovie2 < ActiveRecord::Migration
  def change
    add_column :movie2s, :imdb_plot, :text
  end
end
