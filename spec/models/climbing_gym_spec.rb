require_relative '../spec_helper'

RSpec.describe ClimbingGym do
  attr_reader :gym_1

  before :each do
    ClimbingGym.create(name: "My Test Gym", city: "Golden", state: "CO", owned_by: "Joshy Thompson")
    ClimbingGym.create(name: "Other Test Gym", city: "Golden", state: "CO", owned_by: "Joshy Thompson")
  end

  describe "#validations" do
    it "should be valid with name and owned_by" do
      expect(ClimbingGym.create(name: "test gym", owned_by: "Joshy Thompson")).to be_valid
    end

    it "should not be valid with name missing" do
      expect(ClimbingGym.create(name: "")).not_to be_valid
    end

    it "should not be valid with owned_by missing" do
      expect(ClimbingGym.create(name: "test gym", owned_by: "")).to_not be_valid
    end
  end

  describe "#count" do
    it "returns count of all climbing gyms" do
      expect(ClimbingGym.count).to eq(2)
      expect(ClimbingGym.count).to be <= 2
      expect(ClimbingGym.count).to be >= 1
    end
  end

  describe  "#name" do
    it "returns name of a climbing gym" do
      expect(ClimbingGym.first.name).to eq("My Test Gym")
      expect(ClimbingGym.first).to be_kind_of(ClimbingGym)
    end
  end

  describe "self" do
    it "exists and can be ClimbingGym class AND array" do
      expect(ClimbingGym.all.first).to be_kind_of(ClimbingGym)
      expect(ClimbingGym.all.to_a).to be_kind_of(Array)
    end
  end

  describe "#scream_a_word" do
    it "returns word as SCREAM" do
      expect(ClimbingGym.first.scream_word("hello")).to eq("HELLO")
    end
  end

  describe "#double_that_shit" do
    it "doubles ClimbingGym count" do
      expect(ClimbingGym.double_that_shit).to eq(4)
    end
  end



























end
