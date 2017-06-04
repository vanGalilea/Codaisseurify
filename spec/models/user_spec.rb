require 'rails_helper'

RSpec.describe User, type: :model do
  describe "validations" do
    it { is_expected.to have_one(:profile) }
 end

 describe ".has_profile?" do
   let!(:user1)    { create :user, email: "current@user.com"}
   let!(:user2)    { create :user, email: "yo@user.com"}
   let!(:profile) { create :profile, user: user1, first_name: "Steve", last_name: "Galili"}

   it { expect(user1.has_profile?).to eq(true) }
   it { expect(user2.has_profile?).to eq(false) }
 end

 describe ".full_name" do
   let!(:user1)    { create :user, email: "current@user.com"}
   let!(:user2)    { create :user, email: "yo@user.com"}
   let!(:profile) { create :profile, user: user1, first_name: "Steve", last_name: "Galili"}

   it { expect(user1.full_name).to eq("Steve Galili") }

 end
end
