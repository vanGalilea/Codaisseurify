require "rails_helper"

describe "Deletes all songs" do
  before { login_as user }

  let!(:user)    { create :user }
  let!(:profile) { create :profile, user: user }
  let!(:artist)  { create :artist }
  let!(:album)   { create :album, artist: artist }
  let!(:songs)   { create_list :song, 5, album: album }

  it "shows all songs and delete all button exits" do
    visit artist_album_path(artist, album)

    songs.each do |song|
      expect(page).to have_content song.name
    end
    expect(page).to have_link("Delete All Songs", href: artist_album_songs_destroy_all_path(artist, album))
  end

  it "removes all songs from album" do
    visit artist_album_path(artist, album)
    expect{ click_on('Delete All Songs') }.to change {album.songs.count}.by(-5)
    expect(page.current_path).to eq artist_album_path(artist, album)

    songs.each do |song|
      expect(page).not_to have_content song.name
    end
  end
end
