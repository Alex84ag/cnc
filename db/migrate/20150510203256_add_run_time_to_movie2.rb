class AddRunTimeToMovie2 < ActiveRecord::Migration
  def change
    add_column :movie2s, :runtime, :integer
  end
end
