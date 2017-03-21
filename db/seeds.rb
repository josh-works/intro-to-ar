require './app/models/climbing_gym'
require './app/models/owner'

Owner.destroy_all
ClimbingGym.destroy_all

owners = [
  {name: "Katrina"},
  {name: "Chris Warner"},
  {name: "Julie Liu"}
]

climbing_gyms = [
  {name: "Earth Treks Rockville", city: "Rockville", state: "MD", owner_id: 2},
  {name: "Earth Treks Columbia", city: "Columbia", state: "MD", owner_id: 2},
  {name: "Earth Treks Golden", city: "Golden", state: "CO", owner_id: 2},
  {name: "Earth Treks Crystal City", city: "Crystal City", state: "VA", owner_id: 2},
  {name: "Earth Treks Timonium", city: "Timonium", state: "MD", owner_id: 2},
  {name: "Sport Rock Sterling", city: "Sterling", state: "VA", owner_id: 3},
  {name: "Sport Rock Alexandria", city: "Alexandria", state: "VA", owner_id: 3},
  {name: "Movement Denver", city: "Denver", state: "CO", owner_id: 1},
  {name: "Movement Boulder", city: "Boulder", state: "CO", owner_id: 1},
]

owners.each do |owner|
  puts "creating owner: #{owner[:name]}"
  Owner.create!(owner)
end


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
