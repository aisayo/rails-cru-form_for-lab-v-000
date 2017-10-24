class ArtistsController < ApplicationController

  def show
    @artist = Artist.find(params[:id])
  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.new(params[:artist][:name][:bio])
    @artist.name = params[:artist][:name]
    @artist.bio = params[:artist][:bio]
    @artist.save
  end


end
