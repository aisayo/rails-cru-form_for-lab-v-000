class SongsController < ApplicationController
  def index
    @song = Song.all
  end

  def show
    @song = Song.find(params[:id])
  end

  def new
  end

  def create
  end

  def edi
  end

  def update
  end
  
end
