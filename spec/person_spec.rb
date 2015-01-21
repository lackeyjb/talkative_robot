require 'spec_helper'
require_relative '../lib/person'

describe Person do
  describe "male?" do
    context "is a guy" do
      let(:person_m) { Person.new(gender: "M") }
      
      it "is true" do
        expect( person_m.male? ).to be_truthy
      end
    end
  end
end