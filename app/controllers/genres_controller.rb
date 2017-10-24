class GenresController < ApplicationController
  def index
    @genre = Genre.all
  end
  def show
    @genre = Genre.find(params[:id])
  end

  def new
    @genre = Genre.new
  end

  def create
    @genre = Genre.new
    @genre.name = params[:genre][:name]
    @genre.save
    redirect_to genres_path(@genre)
  end
end
