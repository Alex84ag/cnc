class Movie2 < ActiveRecord::Base
  has_paper_trail
  #attr_accessible :tt_id,:genre,:bucket
  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      Movie2.create! row.to_hash
    end
  end
end