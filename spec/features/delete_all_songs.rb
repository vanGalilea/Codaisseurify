require "rails_helper"

describe "Deletes all song" do
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


  it { click_button ('Delete All Songs') }


end
