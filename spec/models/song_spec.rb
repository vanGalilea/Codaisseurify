require 'rails_helper'

RSpec.describe Song, type: :model do
  describe "validations" do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_uniqueness_of(:name) }
    it { is_expected.to validate_length_of(:name).is_at_most(50) }
    it { is_expected.to validate_presence_of(:url) }
    it { is_expected.to have_many(:profiles) }
    it { is_expected.to have_many(:favourites) }
    it { is_expected.to belong_to(:album) }
    it { is_expected.to have_and_belong_to_many(:genres) }
 end
end
