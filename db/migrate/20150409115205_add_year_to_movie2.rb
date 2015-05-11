class AddYearToMovie2 < ActiveRecord::Migration
  def change
    add_column :movie2s, :year, :integer
  end
end
