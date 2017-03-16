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

end
