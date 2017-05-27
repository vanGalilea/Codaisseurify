class RemoveArtistFromSongs < ActiveRecord::Migration[5.1]
  def change
    remove_reference :songs, :artist, foreign_key: true
  end
end
