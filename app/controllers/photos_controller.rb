class PhotosController < ApplicationController
  def destroy
    photo = Photo.find(params[:id])
    @artist = photo.artist
    photo.destroy!
    @photos = Photo.where(artist_id: @artist.id)

    respond_to do |format|
      format.html { redirect_to edit_artist_path(@artist), notice: "Photo successfully removed" }
      format.js
    end
  end
end
