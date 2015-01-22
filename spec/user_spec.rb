require 'spec_helper'
require_relative '../lib/user'

describe User do
  describe "#prints_user_message" do
    context "user Bryan is 25" do
      let(:user_bryan) { User.new(name: "Bryan", age: 25) }

      it "will return user greeting" do
        expect( user_bryan.prints_user_message ).to eq("Do you mind if I call you B?")          
      end
    end
  end 

  describe "#user_turns_75_message" do
    context "is less than 75" do
      let(:user_under) { User.new(age: 4) }

      it "will return when user turns 75 message" do
        expect( user_under.user_turns_75_message ).to start_with "You will be"
      end
    end
  
    context "is 75" do
      let(:user_is) { User.new(age: 75) }

      it "will return user is 75 message" do
        expect( user_is.user_turns_75_message ).to start_with "You are"  
      end
    end

    context "is over 75" do
      let(:user_over) { User.new(age: 80) }

      it "will return when user turned 75 message" do
        expect( user_over.user_turns_75_message ).to start_with "You turned"
      end
    end
  end  

  describe ".male?" do
    context "is a man" do
      let(:user_m) { User.new(gender: "M") }

      it "is true" do
        expect( user_m.male? ).to be_truthy
      end

      let(:user_male) { User.new(gender: "Male") }

      it "is true" do
        expect( user_male.male? ).to be_truthy
      end
    end
  
    context "is a woman" do
      let(:user_f) { User.new(gender: "F") }

      it "is false" do
        expect( user_f.male? ).to be_falsey
      end
    end

    context "is a woman" do
      let(:user_female) { User.new(gender: "Female") }

      it "is false" do
        expect( user_female.male? ).to be_falsey
      end
    end
  end

  describe "#young_person_message" do
    context "is a young boy" do
      let(:user_young_m) { User.new(gender: "M") }

      it "is true" do
        expect( user_young_m.young_person_message ).to eq("young boy")
      end
    end

    context "is a young boy" do
      let(:user_young_male) { User.new(gender: "Male") }

      it "is true" do
        expect( user_young_male.young_person_message ).to eq("young boy")
      end
    end

    context "is a young girl" do
      let(:user_young_f) { User.new(gender: "F") }

      it "is true" do
        expect( user_young_f.young_person_message ).to eq("young girl")
      end
    end

    context "is a young girl" do
      let(:user_young_female) { User.new(gender: "Female") }

      it "is true" do
        expect( user_young_female.young_person_message ).to eq("young girl")
      end
    end
  end

  describe "#great_great_grandparent_message" do
    context "is a grandpa" do
      let(:user_old_m) { User.new(gender: "M") }

      it "is true" do
        expect( user_old_m.great_great_grandparent_message).to eq("great-great grandpa")
      end
    end

    context "is a grandpa" do
      let(:user_old_male) { User.new(gender: "Male") }

      it "is true" do
        expect( user_old_male.great_great_grandparent_message).to eq("great-great grandpa")
      end
    end

    context "is a grandma" do
      let(:user_old_f) { User.new(gender: "F") }

      it "is true" do
        expect( user_old_f.great_great_grandparent_message).to eq("great-great grandma")
      end
    end

    context "is a grandma" do
      let(:user_old_female) { User.new(gender: "Female") }

      it "is true" do
        expect( user_old_female.great_great_grandparent_message).to eq("great-great grandma")
      end
    end
  end

  describe "#prints_user_age_message" do
    context "user grandpa message" do
      let(:user_message_m) { User.new(age: 102, gender: "M") }

      it "will return user grandpa message" do
        expect( user_message_m.prints_user_age_message).to eq("You're probably someone's great-great grandpa!!")
      end
    end

    context "user grandpa message" do
      let(:user_message_male) { User.new(age: 102, gender: "Male") }

      it "will return user grandpa message" do
        expect( user_message_male.prints_user_age_message).to eq("You're probably someone's great-great grandpa!!")
      end
    end

    context "user grandma message" do
      let(:user_message_f) { User.new(age: 102, gender: "F") }

      it "will return user grandma message" do
        expect( user_message_f.prints_user_age_message).to eq("You're probably someone's great-great grandma!!")
      end
    end

    context "user grandma message" do
      let(:user_message_female) { User.new(age: 102, gender: "Female") }

      it "will return user grandma message" do
        expect( user_message_female.prints_user_age_message).to eq("You're probably someone's great-great grandma!!")
      end
    end

    context "user young boy message" do
      let(:user_young_m) { User.new(age: 1, gender: "M") }

      it "will return user young boy message" do
        expect( user_young_m.prints_user_age_message).to eq("You're a young boy.")
      end
    end

    context "user young boy message" do
      let(:user_young_male) { User.new(age: 1, gender: "Male") }

      it "will return user young boy message" do
        expect( user_young_male.prints_user_age_message).to eq("You're a young boy.")
      end
    end

    context "user young girl message" do
      let(:user_young_f) { User.new(age: 1, gender: "F") }

      it "will return user young girl message" do
        expect( user_young_f.prints_user_age_message).to eq("You're a young girl.")
      end
    end

    context "user young girl message" do
      let(:user_young_female) { User.new(age: 1, gender: "Female") }

      it "will return user young girl message" do
        expect( user_young_female.prints_user_age_message).to eq("You're a young girl.")
      end
    end

    context "user is neither old or young" do
      let(:user_middle_age) { User.new(age: 20) }

      it "will return nil" do
        expect( user_middle_age.prints_user_age_message).to be_nil
      end
    end
  end
end