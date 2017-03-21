require './app/models/climbing_gym.rb'

climbing_gyms = [
  {name: "Earth Treks Rockville", city: "Rockville", state: "MD", owned_by: "Chris Warner"},
  {name: "Earth Treks Columbia", city: "Columbia", state: "MD", owned_by: "Chris Warner"},
  {name: "Earth Treks Golden", city: "Golden", state: "CO", owned_by: "Chris Warner"},
  {name: "Earth Treks Crystal City", city: "Crystal City", state: "VA", owned_by: "Chris Warner"},
  {name: "Earth Treks Timonium", city: "Timonium", state: "MD", owned_by: "Chris Warner"},
  {name: "Sport Rock Sterling", city: "Sterling", state: "VA", owned_by: "Julie Liu"},
  {name: "Sport Rock Alexandria", city: "Alexandria", state: "VA", owned_by: "Julie Liu"},
  {name: "Movement Denver", city: "Denver", state: "CO", owned_by: "Random Dude"},
  {name: "Movement Boulder", city: "Boulder", state: "CO", owned_by: "Random Dude"},
]

climbing_gyms.each do |gym|
  puts "Creating climbing gym: #{gym[:name]}"
  ClimbingGym.create!(gym)
end

# Breed.destroy_all
#
# breeds  = ["Palomino", "Clydesdale", "Percheron", "Mustang", "Trakehner"]
# jockeys = ["Jim", "Joe", "Jessie", "Janet", "Jessica"]
# horses  = [
#             {name: "Penelope", age: 29, total_winnings: 34000, breed_id: 1, jockey_id: 1},
#           ]
#
# breeds.each do |breed|
#   puts "Creating breed: #{breed}"
#   Breed.create!(name: breed)
# end
