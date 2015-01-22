require 'spec_helper'
require_relative '../lib/author'

describe Author do 
  let(:author) { Author.new(name: "Bryan", age: 25, gender: "M", fav_spot: "Yellowstone") }

  describe ".to_s" do
    it "prints class message" do
      expect( author.to_s ).to eq("Hello, this is Bryan the author. I am 25, and my favorite place to visit is Yellowstone.")
    end
  end
end