class CreateMovie2s < ActiveRecord::Migration
  def change
    create_table :movie2s do |t|
      t.integer :tt_id
      t.string :genre
      t.string :bucket

      t.timestamps
    end
  end
end
