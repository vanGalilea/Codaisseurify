require "rails_helper"

describe "Deletes new song" do
  before do
    login_as user
  end

  let!(:user)    { create :user }
  let!(:profile) { create :profile, user: user }
  let!(:artist)  { create :artist }
  let!(:album)   { create :album, artist: artist }
  let!(:song1)   { create :song, album: album }

  it "if the song appears to the view and it's delete button" do
    visit artist_album_path(artist, album)
    expect(page).to have_text song1.name
  end

  it "removes song from album" do
    visit artist_album_path(artist, album)
    expect{ click_on('delete_song') }.to change {album.songs.count}.by(-1)
    expect(page.current_path).to eq artist_album_path(artist, album)
    expect(page).not_to eq have_content song1.name
  end
end
