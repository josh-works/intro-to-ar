require_relative '../spec_helper'

RSpec.describe Horse do
  describe ".total_winnings" do
    it "returns total winnings for all horses" do
      # setup

      Horse.create(name: "bob", age: 22, total_winnings: 3)
      Horse.create(name: "stacey", age: 22, total_winnings: 4)

      # exercise

      result = Horse.total_winnings

      # verify
      expect( result ).to eq (7)
    end
  end

  describe "validations" do
    it "is invalid without a name" do
      horse = Horse.new(age: 22, total_winnings: 33)

      expect (horse).to_not be_valid
    end

    it "should be valid with a name" do
      horse = Horse.new(name: "josh", total_winnings: 12, age: 22)
      expect(horse).to be_valid
    end
  end

  describe "attributes" do
    it "should have name age total_winnings" do
      horse = Horse.new # since no save, this works, even though doesn't impact db

      expect(horse).to respond_to(:name)
      expect(horse).to respond_to(:age)
      expect(horse).to respond_to(:total_winnings)
    end
  end

end
