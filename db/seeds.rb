# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all
puts "Creating restaurants..."

10.times do
  restaurant_types = ["chinese", "italian", "japanese", "french", "belgian"].sample
  restaurant = Restaurant.new(name: Faker::Restaurant.name, address: Faker::Address.street_address, category: restaurant_types, phone_number: Faker::PhoneNumber.phone_number)
  puts "Created #{restaurant.name}"
  restaurant.save
  puts "saving to the database"
end
puts "finished"
