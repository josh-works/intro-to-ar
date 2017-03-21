require_relative '../spec_helper'

RSpec.describe ClimbingGym do
  attr_reader :gym_1,
              :gym_2

  before :each do
    Owner.create(name: "Katrina Papa")
    @gym_1 = ClimbingGym.create(name: "My Test Gym", city: "Golden", state: "CO", owner_id: 1)
    @gym_2 = ClimbingGym.create(name: "Other Test Gym", city: "Golden", state: "CO", owner_id: 1)
  end

  describe "#validations" do
    it "should respond to name" do
      expect(gym_1).to respond_to(:name)
    end

    it "should respond to owner_id" do
      expect(gym_1).to respond_to(:owner_id)
    end

    it "should be valid with name and owner_id" do
      expect(ClimbingGym.create(name: "test gym", owner_id: 1)).to be_valid
    end

    it "should not be valid with name missing" do
      expect(ClimbingGym.create(name: "")).not_to be_valid
    end

    it "should not be valid with owner_id missing" do
      expect(ClimbingGym.create(name: "test gym", owner_id: "")).to_not be_valid
    end
  end

  xdescribe "#count" do
    it "returns count of all climbing gyms" do
      expect(ClimbingGym.count).to eq(2)
      expect(ClimbingGym.count).to be <= 2
      expect(ClimbingGym.count).to be >= 1
    end
  end

  xdescribe  "#name" do
    it "returns name of a climbing gym" do
      expect(ClimbingGym.first.name).to eq("My Test Gym")
      expect(ClimbingGym.first).to be_kind_of(ClimbingGym)
    end
  end

  xdescribe "self" do
    it "exists and can be ClimbingGym class AND array" do
      expect(ClimbingGym.all.first).to be_kind_of(ClimbingGym)
      expect(ClimbingGym.all.to_a).to be_kind_of(Array)
    end
  end

  xdescribe "#scream_a_word" do
    it "returns word as SCREAM" do
      expect(ClimbingGym.first.scream_word("hello")).to eq("HELLO")
    end
  end

  xdescribe "#double_that_shit" do
    it "doubles ClimbingGym count" do
      expect(ClimbingGym.double_that_shit).to eq(4)
    end
  end



























end
