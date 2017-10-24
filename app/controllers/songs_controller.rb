class SongsController < ApplicationController
  def index
    @song = Song.all
  end

  def show
    @song = Song.find(params[:id])
  end

  def new
    @song = Song.new
  end

  def create
  end

  def edi
  end

  def update
  end
  
end
