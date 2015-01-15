class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.integer :tt_id
      t.integer :imdb_id
      t.string :title
      t.integer :production_year

      t.timestamps
    end
  end
end
