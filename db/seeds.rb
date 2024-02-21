# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# db/seeds.rb

Restaurant.destroy_all

restaurants = [
  { name: "Ch Restaurant", address: "Beijing, China", category: "chinese" },
  { name: "It Restaurant", address: "Rome, Italy", category: "italian" },
  { name: "Jp Restaurant", address: "Tokyo, Japan", category: "japanese" },
  { name: "Fr Restaurant", address: "Paris, France", category: "french" },
  { name: "Bl Restaurant", address: "Brussels, Belgium", category: "belgian" }
]

restaurants.each do |restaurant|
  Restaurant.create!(restaurant)
end

puts "Created #{Restaurant.count} restaurants."
