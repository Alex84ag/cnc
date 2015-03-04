class Movie2sController < ApplicationController
  before_action :set_movie2, only: [:show, :edit, :update, :destroy]
  require 'open-uri'
  def new
     @title = "Database Management"
  end
  def show
     @movie = Movie2.find(params[:id])
   end
   def index
     @movie2s = Movie2.all
   end
   
   def edit
   end
   
   def bucket
     @bucketMovies=Movie2.where('bucket=?',params[:bucket]).page(params[:page]).per(5)
     @title=params[:bucket]
   end
   
   def update
     respond_to do |format|
       if @movie2.update(movie2_params)
         format.html { redirect_to @movie2, notice: 'Movie1 was successfully updated.' }
         format.json { render :show, status: :ok, location: @movie2 }
       else
         format.html { render :edit }
         format.json { render json: @movie2.errors, status: :unprocessable_entity }
       end
     end
   end
   
   def create
      @movie2 = Movie2.create(movie2_params)
      respond_to do |format|
        if @movie2.save
          format.html { redirect_to @movie2, notice: 'Movie1 was successfully created.' }
          format.json { render :show, status: :created, location: @movie2 }
        else
          format.html { render :new }
          format.json { render json: @movie2.errors, status: :unprocessable_entity }
        end
      end
    end
    
    def destroy
      @movie2.destroy
      respond_to do |format|
        format.html { redirect_to :back, notice: 'Movie2 was successfully destroyed.' }
        format.json { head :no_content }
      end
    end	
    
    def destroy_multiple
      params[:delete].each do |id|
        Movie2.find(id.to_s).destroy
      end
      respond_to do |format|
        format.html { redirect_to :back, notice: 'Movie2s were successfully destroyed.' }
        format.json { head :no_content }
      end
    end
    
    def import
      Movie2.import(params[:file])
      redirect_to root_url, notice: "Movies imported."
    end
   
   private
     # Use callbacks to share common setup or constraints between actions.
     def set_movie2
       @movie2 = Movie2.find(params[:id])
     end

     # Never trust parameters from the scary internet, only allow the white list through.
     def movie2_params
       params.require(:movie2).permit(:tt_id,:genre,:bucket)
     end
   
end
