class SongsController < ApplicationController
  before_action :set_artist
  before_action :set_album
  before_action :set_song, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:show]

  def new
    @song = @album.songs.build
  end

  def create
    @song = @album.songs.create(song_params)

    if @song.save
      render status: 200, json: {
        message: "Song successfully created",
        song: song
      }.to_json
    else
      render status: 422, json: {
        error: song.errors.full_messages
      }.to_json
    end
  end

  def update
    if @song.update(song_params)
      redirect_to artist_album_path(@artist, @album), notice: "Song successfully updated"
    else
      render :edit
    end
  end

  def destroy
    @song.destroy!
    @songs = @album.songs
    respond_to do |format|
      format.html { redirect_to artist_album_path(@artist, @album), notice: "Song successfully deleted" }
      format.js
    end
  end

  def destroy_all
    @album.songs.destroy_all
    
    respond_to do |format|
      format.html { redirect_to artist_album_path(@artist, @album), notice: "All songs successfully deleted" }
      format.js
    end
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
