# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

require 'faker'

Car.destroy_all
User.destroy_all
puts "Creating cars..."

user = User.create email: "test@gmail.com", password: "123456"

15.times do |car|
  cars = {
    make: Faker::Vehicle.make,
    model: Faker::Vehicle.model,
    year: Faker::Vehicle.year,
    price: Faker::Commerce.price,
    description: Faker::Vehicle.standard_specs.join(", "),
    colour: Faker::Vehicle.color ,
    capacity: Faker::Vehicle.version,
    location:Faker::Address.city,
    user: user
  }
  car = Car.create!(cars)
  puts "Created #{car.make}"
end

puts "Finished!"
