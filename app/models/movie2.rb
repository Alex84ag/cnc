class Movie2 < ActiveRecord::Base
  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      Movie2.create! row.to_hash
    end
  end
end