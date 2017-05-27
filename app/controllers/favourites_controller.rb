class FavouritesController < ApplicationController
  # before_action :authenticate_user!, except: [:show]
  #
  # def create
  #  @favourite = current_user.profile.fav_songs.new(favourite_params.merge(song_id: params[:song_id]))
  #  @favourite.save
  #  redirect_to root, notice: "Song added to your Fav. list!"
  # end
  #
  # # def destroy
  # #   @song.destroy
  # #   redirect_to artist_album_path(@artist, @album), notice: "Song successfully deleted"
  # # end
  #
  # private
  #   def favourite_params
  #     params.require(:favourite).permit(:profile_id, :song_id)
  #   end
end


# dit werkt helaas nog niet
