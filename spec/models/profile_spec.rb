require 'rails_helper'

RSpec.describe Profile, type: :model do
  describe "validations" do
    it { is_expected.to validate_presence_of(:first_name) }
    it { is_expected.to validate_presence_of(:last_name) }
    it { is_expected.to validate_presence_of(:bio) }
    it { is_expected.to have_many(:favourites) }
    it { is_expected.to have_many(:fav_songs) }
    it { is_expected.to belong_to(:user) }
  end
end
