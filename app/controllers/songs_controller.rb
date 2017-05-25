class SongsController < ApplicationController
  before_action :set_artist
  before_action :set_song, only: [:show, :edit, :update, :destroy]
  # before_action :authenticate_user!, except: [:show]

  def index
    @songs = Song.all
  end

  def show
  end

  def new
    @song = @artist.songs.build
  end

  def create
    @song = @artist.songs.build(song_params)

    if @song.save
      redirect_to artist_song_path(@artist, @song), notice: "Song successfully created"
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @song.update(song_params)
      redirect_to artist_song_path(@artist, @song), notice: "Song successfully updated"
    else
      render :edit
    end
  end

  def destroy
    @song.destroy
    redirect_to artist_songs_path(@artist ), notice: "Song successfully deleted"
  end

  private
    def set_artist
      @artist = Artist.find(params[:artist_id])
    end

    def set_song
      @song = Song.find(params[:id])
    end

    def song_params
      params.require(:song).permit(:name, :url, :year_released, :artist_id)
    end
end
