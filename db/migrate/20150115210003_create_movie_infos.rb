class CreateMovieInfos < ActiveRecord::Migration
  def change
    create_table :movie_infos do |t|
      t.integer :movie_id
      t.integer :info_type_id
      t.string :info

      t.timestamps
    end
  end
end
