class ArtistsController < ApplicationController
  before_action :set_artist, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  def index
    @artists = Artist.all
  end

  def show
  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.new(artist_params)

    if @artist.save
      image_params.each do |image|
        @artist.photos.create(image: image)
      end

      redirect_to @artist, notice: "Artist successfully created"
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @artist.update(artist_params)
      image_params.each do |image|
        @artist.photos.create(image: image)
      end

      redirect_to @artist, notice: "Artist successfully updated"
    else
      render :edit
    end
  end

  def destroy
    @artist.destroy
    redirect_to artists_path, notice: "Artist successfully deleted"
  end

  private
    def set_artist
      @artist = Artist.find(params[:id])
    end

    def artist_params
      params.require(:artist).permit(:name, :description)
    end

    def image_params
      params[:images].present? ? params.require(:images) : []
    end
end
