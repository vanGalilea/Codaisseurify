class SongsController < ApplicationController
  before_action :set_artist
  before_action :set_album
  before_action :set_song, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:show]

  def index
  end

  def show
  end

  def new
    @song = @album.songs.build
  end

  def create
    @song = @album.songs.create(song_params)

    if @song.save
      redirect_to artist_album_path(@artist, @album), notice: "Song successfully created"
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @song.update(song_params)
      redirect_to artist_album_path(@artist, @album), notice: "Song successfully updated"
    else
      render :edit
    end
  end

  def destroy
    @song.destroy
    redirect_to artist_album_path(@artist, @album), notice: "Song successfully deleted"
  end

  private
    def set_artist
      @artist = Artist.find(params[:artist_id])
    end

    def set_album
      @album = Album.find(params[:album_id])
    end

    def set_song
      @song = Song.find(params[:id])
    end

    def song_params
      params.require(:song).permit(:name, :url, :year_released, genre_ids: [])
    end
end
