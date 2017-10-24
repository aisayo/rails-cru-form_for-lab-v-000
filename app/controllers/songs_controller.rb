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
    @song = Song.new(song_params(:name, :artist_id, :genre_id))
    @song.name = params[:song][:name]
    @song.artist = params[:song][:artist_id]
    @song.genre = params[:song][:genre_id]
    @song.save
    redirect_to song_path(@song)
  end

  def edi
  end

  def update
  end

  private

  def song_params
    params.require(:song).permit(:name, :artist_id, :genre_id)
  end

end
