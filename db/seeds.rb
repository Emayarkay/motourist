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

car1 = Car.create!(
  make: 'Austin',
  model: 'Mini',
  year: 1979,
  price: 120,
  description: "The vehicle had just been fully restored by its Mini enthusiast long-term owner when it was purchased by our vendor in 2021 Finished in Old English White with a black roof, very 1960s Mini-Cooper, it's fitted with the, now impossible to find, tubular tilt framework New interior throughout including black vinyl seats, red dash, door cards and carpets.",
  colour: 'White',
  capacity: 2,
  location: Faker::Address.city,
  user: user
)
car1.image.attach(
  io: File.open(File.join(Rails.root, 'app/assets/images/austin-mini.jpg')),
  filename: 'austin-mini.jpg'
)
puts "Created #{car1.make}"

puts "Finished!"
