class Movie1sController < ApplicationController
  before_action :set_movie1, only: [:show, :edit, :update, :destroy]
require 'open-uri'
  # GET /movie1s
  # GET /movie1s.json
  def index
    @movie1s = Movie1.all
  end

  # GET /movie1s/1
    # GET /movie1s/1.json
    def show
    end

    # GET /movie1s/new
    def new
      @movie1 = Movie1.new
    end

    # GET /movie1s/1/edit
    def edit
    end

    # POST /movie1s
    # POST /movie1s.json
    def create
      @movie1 = Movie1.new(movie1_params)

      respond_to do |format|
        if @movie1.save
          format.html { redirect_to @movie1, notice: 'Movie1 was successfully created.' }
          format.json { render :show, status: :created, location: @movie1 }
        else
          format.html { render :new }
          format.json { render json: @movie1.errors, status: :unprocessable_entity }
        end
      end
    end

    # PATCH/PUT /movie1s/1
    # PATCH/PUT /movie1s/1.json
    def update
      respond_to do |format|
        if @movie1.update(movie1_params)
          format.html { redirect_to @movie1, notice: 'Movie1 was successfully updated.' }
          format.json { render :show, status: :ok, location: @movie1 }
        else
          format.html { render :edit }
          format.json { render json: @movie1.errors, status: :unprocessable_entity }
        end
      end
    end

    # DELETE /movie1s/1
    # DELETE /movie1s/1.json
    def destroy
      @movie1.destroy
      respond_to do |format|
        format.html { redirect_to movie1s_url, notice: 'Movie1 was successfully destroyed.' }
        format.json { head :no_content }
      end
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
