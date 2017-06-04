require 'rails_helper'

RSpec.describe Genre, type: :model do
  describe "validations" do
    it { is_expected.to have_and_belong_to_many(:songs) }
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_uniqueness_of(:name) }
  end
end
