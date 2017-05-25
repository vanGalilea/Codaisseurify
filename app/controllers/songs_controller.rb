class SongsController < ApplicationController
  before_action :set_song, only: [:show, :edit, :update]
  # before_action :authenticate_user!, except: [:show]

  def index
    @songs = Song.all
  end

  def show
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.new(song_params)

    if @song.save
      redirect_to @song, notice: "Song successfully created"
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @song.update(song_params)
      redirect_to @song, notice: "Song successfully updated"
    else
      render :edit
    end
  end

  private
    def set_song
      @song = Song.find(params[:id])
    end

    def song_params
      params.require(:song).permit(:name, :url, :year_released, :artist_id)
    end
end
