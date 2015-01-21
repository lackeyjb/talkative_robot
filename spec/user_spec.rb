require 'spec_helper'
require_relative '../lib/user'

describe User do 
  describe ".male?" do
    context "is a man" do
      let(:user_m) { User.new(gender: "M") }

      it "is true" do
        expect( user_m.male? ).to be_truthy
      end
    end
  end

  describe ".male?" do
    context "is a man" do
      let(:user_male) { User.new(gender: "Male") }

      it "is true" do
        expect( user_male.male? ).to be_truthy
      end
    end
  end

  describe ".male?" do
    context "is a woman" do
      let(:user_f) { User.new(gender: "F") }

      it "is false" do
        expect( user_f.male? ).to be_falsey
      end
    end
  end

  describe ".male?" do
    context "is a woman" do
      let(:user_female) { User.new(gender: "Female") }

      it "is false" do
        expect( user_female.male? ).to be_falsey
      end
    end
  end
end