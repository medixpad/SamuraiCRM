require 'rails_helper'

module Samurai
  RSpec.describe User, type: :model do
    it "has a valid factory" do
      expect(FactoryBot.build(:user)).to be_valid
    end

    it "is invalid without an email" do
      expect(FactoryBot.build(:user, email: nil)).to_not be_valid
    end

    it "is invalid without a password" do
      expect(FactoryBot.build(:user, password: nil)).to_not be_valid
    end

    it "is invalid with different password and password confirmation" do
      expect(FactoryBot.build(:user, password: 'pass', password_confirmation: 'pwd')).to_not be_valid
    end
  end
end
