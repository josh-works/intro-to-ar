require_relative '../spec_helper'

RSpec.describe Owner do
  attr_reader :owner_1

  before :each do
    @owner_1 = Owner.create(name: "Katrina Papa")
    ClimbingGym.create(name: "My Test Gym", city: "Golden", state: "CO", owner_id: 1)
    ClimbingGym.create(name: "Other Test Gym", city: "Golden", state: "CO", owner_id: 1)
  end

  describe "Owner" do
    it "should have a name" do
      expect(owner_1.name).to eq("Katrina Papa")
    end

    it "should be invalid without a name" do
      expect(Owner.create(name: "")).to_not be_valid
    end

    it "should have several gyms" do
      expect(owner_1.climbing_gyms.count).to eq(2)
      expect(owner_1.climbing_gyms.first.name).to eq("My Test Gym")
    end

  end


end
