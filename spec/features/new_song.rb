require "rails_helper"

describe "Creating new song" do
  before do
    login_as user
    visit artist_album_path(artist, album)
  end

  let!(:user)    { create :user }
  let!(:profile) { create :profile, user: user }
  let!(:artist)  { create :artist }
  let!(:album)   { create :album, artist: artist }

  it { expect(page).to have_content "Add a new song" }
  it { expect(page).to have_field "Song Title" }

  it "add song to album" do
    fill_in "Song Title", with: Faker::Lorem.characters(15)
    fill_in "Year Released", with: Faker::Number.number(4)
    fill_in "Song URL", with: Faker::Internet.url
    expect { click_on "Save" }.to change {album.songs.count}.by(1)
    expect(page.current_path).to eq artist_album_path(artist, album)
  end
end
