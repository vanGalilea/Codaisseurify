require 'rails_helper'

RSpec.describe Artist, type: :model do
  describe "validations" do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_uniqueness_of(:name) }
    it { is_expected.to validate_length_of(:description).is_at_most(500) }
    it { is_expected.to have_many(:albums) }
    it { is_expected.to have_many(:photos) }
  end
end
