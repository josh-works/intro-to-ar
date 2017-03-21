require_relative "../spec_helper"

RSpec.describe "as a user tries to create a horse" do
  xit "they can create a new horse" do

    # as a user, when I visit '/horses/new'
    visit '/horses/new'

    # and I fill in a horse's name with "Frank"
    # and I fill in a horses age with 3
    # and I fill in total_winnings with 99
    fill_in 'horse[name]', with: 'Frank'
    fill_in 'horse[total_winnings]', with: '99'
    fill_in 'horse[age]', with: '3'

    # and I click submit
    click_on "Create New Horse"

    # Then I expect to be taken to "/horses"
    expect( current_path ).to eq('/horses')

    within(".horse-info") do
      # and I expect to see "Frank"
      # and I expect to see "3"
      # and I expect to see "99"
      expect(page).to have_content("Betty")
      expect(page).to have_content("3")
      expect(page).to have_content("99")
    end

  end
end
