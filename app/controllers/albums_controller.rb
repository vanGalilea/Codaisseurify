class AlbumsController < ApplicationController
  before_action :set_artist
  before_action :set_album, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:show]

  def index
  end

  def show
  end

  def new
    @album = @artist.album.build
  end

  def create
    @album = @artist.album.create(album_params)

    if @album.save
      redirect_to artist_album_path(@artist, @album), notice: "Album successfully created"
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @album.update(album_params)
      redirect_to artist_album_path(@artist, @album), notice: "Album successfully updated"
    else
      render :edit
    end
  end

  def destroy
    @album.destroy
    redirect_to artist_path(@artist), notice: "Album successfully deleted"
  end

  private
    def set_artist
      @artist = Artist.find(params[:artist_id])
    end

    def set_album
      @album = Album.find(params[:id])
    end

    def album_params
      params.require(:album).permit(:name)
    end
end
