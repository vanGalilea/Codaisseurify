class Favourite < ApplicationRecord
  belongs_to :profile
  belongs_to :song

  def self.find_by_song(id)
    Favourite.find_by(song_id: id)
  end
end
