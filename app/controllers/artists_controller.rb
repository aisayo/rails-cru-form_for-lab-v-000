class ArtistsController < ApplicationController

  def show
  end
  
  def new
    @artist = Artist.new
  end

  
end
