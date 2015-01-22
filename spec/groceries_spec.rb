require 'spec_helper'
require_relative '../lib/groceries'

describe GroceryList do
#   describe "#random_item.stub" do  #how do I make this test work?
#     it "will return a random item from the grocery array" do
#       expect( grocery_list.random_item.stub(:sample).and_return(["bananas", "chicken", "eggs"])
#       grocery_list = GroceryList.new( {grocery_list: ["bananas", "chicken", "eggs"]} )
#       grocery_list.sample.to eq(grocery_list)
#     end
#   end

  describe ".pickup_item?" do
    context "item was picked up" do
      let(:picked_up) { GroceryList.new(answer: "Y", random_item: "eggs") }

      it "is true" do
        expect( picked_up.pickup_item? ).to be_truthy
      end
    end

    context "item was picked up" do
      let(:picked_up) { GroceryList.new(answer: "Yes", random_item: "eggs") }

      it "is true" do
        expect( picked_up.pickup_item? ).to be_truthy
      end
    end

    context "item wasn't picked up" do
      let(:picked_up) { GroceryList.new(answer: "N", random_item: "eggs") }

      it "is false" do
        expect( picked_up.pickup_item? ).to be_falsey
      end
    end
  end

  describe "#delete_item" do
    context "random item picked up" do
      let(:delete) { GroceryList.new(answer: "Y", grocery_list: ["eggs", "bacon", "biscuits"], random_item: "eggs") }

      it "is deleted" do
        expect( delete.delete_item ).to eq("eggs")
      end
    end

    context "random item not picked up" do
      let(:delete) { GroceryList.new(answer: "N", grocery_list: ["eggs", "bacon", "biscuits"], random_item: "eggs") }

      it "is not deleted" do
        expect( delete.delete_item ).to be_nil
      end
    end
  end
end