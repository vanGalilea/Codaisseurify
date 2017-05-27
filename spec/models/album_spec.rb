require 'rails_helper'

RSpec.describe Album, type: :model do
  describe "validations" do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_uniqueness_of(:name) }
    it { is_expected.to validate_length_of(:name).is_at_most(50) }
    it { is_expected.to have_many(:songs) }
    it { is_expected.to belong_to(:artist) }
  end
end
