class MoviesController < ApplicationController
  before_action :set_movie, only: [:show]

  # GET /movies
  # GET /movies.json
  def index
    if params[:query].present?
      @movies = Movie.where("name LIKE ?", "%#{params[:query]}%")
    end

  end

  # GET /movies/1
  # GET /movies/1.json
  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_movie
      @movie = Movie.find(params[:id])
    end
end
