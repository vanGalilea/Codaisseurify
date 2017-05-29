class FavouritesController < ApplicationController
  # before_action :authenticate_user!, except: [:show]

  def new
    set_song_id
    @favourite = Favourite.new(song: @song ,profile: current_user.profile)
    @favourite.save
    redirect_to root_path, notice: "Song added to your Fav. list!"
  end

  def destroy
    set_song
    @song = Song.find(params[:id])
    @favourite = Favourite.find_by(song_id: @song.id)
    @favourite.destroy
    redirect_to root_path, notice: "Song deleted from your Fav. list!"
  end

  private
    def set_song_id
      @song = Song.find(params[:song_id])
    end

    def set_song
      @song = Song.find(params[:id])
    end
end
