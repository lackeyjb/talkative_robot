require 'spec_helper'
require_relative '../lib/groceries'

describe GroceryList do
  let(:grocery_list) { GroceryList.new(items: ["eggs", "bacon", "butter"]) }

  describe "#random_item" do 
    
    it "returns eggs" do
      random = grocery_list.random_item
      expect( grocery_list.items.include?(random) ).to be_truthy
    end
  end

  describe "#pickup_item?" do
    
    context "item was picked up" do
      it "is true" do
        grocery_list.answer = "Y"
        expect( grocery_list.pickup_item? ).to be_truthy
      end
    end

    context "item wasn't picked up" do      
      it "is false" do
        expect( grocery_list.pickup_item? ).to be_falsey
      end
    end
  end

  describe "#delete_item" do
    
    context "random item picked up" do
      it "is deleted" do
        random = grocery_list.random_item
        expect( grocery_list.items.include?(random) ).to be_truthy
      end
    end

    context "random item not picked up" do
      it "is not deleted" do
        expect( grocery_list.delete_item ).to be_nil
      end
    end
  end
end