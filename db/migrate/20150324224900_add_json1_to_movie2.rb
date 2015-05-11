class AddJson1ToMovie2 < ActiveRecord::Migration
  def change
    add_column :movie2s, :tt, :json
  end
end
