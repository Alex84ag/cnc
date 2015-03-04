class PagesController < ApplicationController
  def home
    @title = "Home"
     @buckets = Movie2.uniq.pluck(:bucket)
     @genres = Movie2.uniq.pluck(:genre)
  end
end
