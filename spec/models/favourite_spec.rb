require 'rails_helper'

RSpec.describe Favourite, type: :model do
  describe "validations" do
    it { is_expected.to belong_to(:profile) }
    it { is_expected.to belong_to(:song) }
  end
end
