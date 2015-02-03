class AddBucketToMovie1 < ActiveRecord::Migration
  def change
    add_column :movie1s, :bucket, :string
  end
end
