require "rails_helper"

describe "Deletes new song" do
  before do
    login_as user
    visit artist_album_path(artist, album)
  end

  let!(:user)    { create :user }
  let!(:profile) { create :profile, user: user }
  let!(:artist)  { create :artist }
  let!(:album)   { create :album, artist: artist }
  let!(:song1)   { create :song, album: album }
  let!(:song2)   { create :song, album: album }


  it { expect(page).to have_link('', href: "artist/#{artist.id}/albums/#{album.id}/songs/#{song1.id}") }




  # it "removes song from album" do
  #   expect { find_link("delete", href: artist_album_song_path(artist, album, song1)).click }.to change {album.songs.count}.by(-1)
  #   expect(page.current_path).to eq artist_album_path(artist, album)
  #   expect(page).not_to eq have_content songs1.name
  #   expect(page).to eq have_content songs2.name
  # end
end
