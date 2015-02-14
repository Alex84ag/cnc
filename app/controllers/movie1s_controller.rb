class Movie1sController < ApplicationController
  before_action :set_movie1, only: [:show, :edit, :update, :destroy]
require 'open-uri'
  # GET /movie1s
  # GET /movie1s.json
  def index
    @movie1s = Movie1.all
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_movie1
      @movie1 = Movie1.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def movie1_params
      params.require(:movie1).permit(:tt_id)
    end
end
