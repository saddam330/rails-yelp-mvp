# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts 'Cleaning database....'

Restaurant.destroy_all

puts 'creating restuarants....'
restaurants = [
  { name: "Chez Pierre", address: "123 Paris St, Paris", category: "french" },
  { name: "Tokyo Sushi", address: "456 Tokyo Ave, Tokyo", category: "japanese" },
  { name: "Mama Mia", address: "789 Rome Rd, Rome", category: "italian" },
  { name: "Great Wall", address: "321 Beijing Blvd, Beijing", category: "chinese" },
  { name: "Brussels Bites", address: "654 Belgium Way, Brussels", category: "belgian" }
]
restaurants.each do |restaurant_data|
  Restaurant.create!(restaurant_data)
end
puts "Finished! Created #{Restaurant.count} restaurants."
