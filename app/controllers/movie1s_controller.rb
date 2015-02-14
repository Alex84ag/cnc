class Movie1sController < ApplicationController
  before_action :set_movie1, only: [:show, :edit, :update, :destroy]
require 'open-uri'
  # GET /movie1s
  # GET /movie1s.json
  def index
    @movie1s = Movie1.all
  end

  
end
