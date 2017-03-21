require_relative '../spec_helper'

RSpec.describe City do
  attr_reader :city_1

  before :each do
    @city_1 = City.create(name: "Denver")
    Owner.create(name: "Chris Warner")
    ClimbingGym.create(name: "My Test Gym", city_id: 1, owner_id: 1)
    ClimbingGym.create(name: "Other Test Gym", city_id: 1, owner_id: 1)
  end

  describe "validations" do
    it "exists" do
      expect(city_1).to be_kind_of(City)
    end

    it "is invalid without name" do
      expect(City.new(name: "")).to_not be_valid
    end
  end

  describe "relationships" do
    it "should have several gyms" do
      expect(city_1.climbing_gyms.first).to be_kind_of(ClimbingGym)
      expect(city_1.climbing_gyms.count).to eq(2)
    end

    it "should find gym owners" do
      expect(city_1.climbing_gyms.where("name = ?", "My Test Gym")).to respond_to(:name)
      expect(city_1.climbing_gyms.where("name = ?", "My Test Gym").first.owner.name).to eq("Chris Warner")
    end
  end

end
