class CreateMovie1s < ActiveRecord::Migration
  def change
    create_table :movie1s do |t|
      t.integer :tt_id

      t.timestamps
    end
  end
end
