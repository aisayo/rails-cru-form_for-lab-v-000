class ArtistsController < ApplicationController

  def index
    @artist = Artist.all
  end

  def new
    @artist = Artist.new
  end

  def show
  end
end
