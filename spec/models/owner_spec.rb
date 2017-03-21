require_relative '../spec_helper'

RSpec.describe Owner do
  attr_reader :owner_1

  before :each do
    @owner_1 = Owner.create(name: "Katrina Papavasilliou")
  end

  describe "Owner" do
    it "should have a name" do
      expect(owner_1.name).to eq("Katrina Papavasilliou")
    end

    it "should be invalid without a name" do
      expect(Owner.create(name: "")).to_not be_valid
    end

  end


end
