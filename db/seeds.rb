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

car1 = Car.new(
  make: 'Austin',
  model: 'Mini',
  year: 1979,
  price: 150,
  description: "The vehicle had just been fully restored by its Mini enthusiast long-term owner when it was purchased by our vendor in 2021 Finished in Old English White with a black roof, very 1960s Mini-Cooper, it's fitted with the, now impossible to find, tubular tilt framework New interior throughout including black vinyl seats, red dash, door cards and carpets.",
  colour: 'White',
  capacity: 4,
  location: 'Newcastle',
  user: user
)
car1.photo.attach(io: File.open('app/assets/images/austin-mini.jpg'), filename: "austin-mini.jpg", content_type: "image/jpg")
car1.photo.attach(io: File.open('app/assets/images/austin-mini-2.jpg'), filename: "austin-mini-2.jpg", content_type: "image/jpg")
car1.photo.attach(io: File.open('app/assets/images/austin-mini-3.jpg'), filename: "austin-mini-3.jpg", content_type: "image/jpg")

car1.save!

puts "Created #{car1.make}"

car2 = Car.new(
  make: 'MG',
  model: 'RV8',
  year: 1995,
  price: 130,
  description: "The alloy wheels are unmarked as is the surrounding windscreen area. The leather, soft top and soft top tonneau cover are all in good condition.",
  colour: 'Green',
  capacity: 2,
  location: 'Bolton',
  user: user
)
car2.photo.attach(io: File.open('app/assets/images/MG-RV8.jpg'), filename: "MG-RV8.jpg", content_type: "image/jpg")
car2.photo.attach(io: File.open('app/assets/images/MG-RV8-2.jpg'), filename: "MG-RV-2.jpg", content_type: "image/jpg")
car2.photo.attach(io: File.open('app/assets/images/MG-RV8-3.jpg'), filename: "MG-RV8-3.jpg", content_type: "image/jpg")
car2.save!
puts "Created #{car2.make}"

car3 = Car.new(
  make: 'Ford',
  model: 'Mustang',
  year: 1967,
  price: 210,
  description: "Presenting this stunning Apple Candy Red with Black trim 289 Convertible black roof car that was manufactured in 1967.",
  colour: 'Red',
  capacity: 4,
  location: 'Swindon',
  user: user
)
car3.photo.attach(io: File.open('app/assets/images/ford-mustang.jpg'), filename: "ford-mustang.jpg", content_type: "image/jpg")
car3.photo.attach(io: File.open('app/assets/images/ford-mustang-2.jpg'), filename: "ford-mustang-2.jpg", content_type: "image/jpg")
car3.photo.attach(io: File.open('app/assets/images/ford-mustang-3.jpg'), filename: "ford-mustang-3.jpg", content_type: "image/jpg")
car3.save!
puts "Created #{car3.make}"

car4 = Car.new(
  make: 'Bentley',
  model: 'R-Type Standard Steel Saloon',
  year: 1952,
  price: 300,
  description: "Specially ordered in LHD-One of only 50 LHD R Types built. Formerly part of a world class collection.",
  colour: 'Burgundy/Grey',
  capacity: 5,
  location: 'Cardiff',
  user: user
)
car4.photo.attach(io: File.open('app/assets/images/bentley-r-type.jpg'), filename: "bentley-r-type.jpg", content_type: "image/jpg")
car4.photo.attach(io: File.open('app/assets/images/bentley-r-type-2.jpg'), filename: "bentley-r-type-2.jpg", content_type: "image/jpg")
car4.photo.attach(io: File.open('app/assets/images/bentley-r-type-3.jpg'), filename: "bentley-r-type-3.jpg", content_type: "image/jpg")
car4.save!
puts "Created #{car4.make}"

car5 = Car.new(
  make: 'Fiat',
  model: 'Panda',
  year: 1991,
  price: 50,
  description: "Low miles; increasingly rare; very smart. Under the bonnet we find an economical one-Litre engine plus spare wheel and the inside is in very nice condition apart from the sagging headlining which has become detached at the rear. The car presents very well, looking it’s had a recent machine polish - the red paintwork is gleaming and has stood up well to the test of time.",
  colour: 'Red',
  capacity: 4,
  location: 'Sheffield',
  user: user
)
car5.photo.attach(io: File.open('app/assets/images/fiat-panda.jpg'), filename: "fiat-panda.jpg", content_type: "image/jpg")
car5.photo.attach(io: File.open('app/assets/images/fiat-panda-2.jpg'), filename: "fiat-panda-2.jpg", content_type: "image/jpg")
car5.photo.attach(io: File.open('app/assets/images/fiat-panda-3.jpg'), filename: "fiat-panda-3.jpg", content_type: "image/jpg")
car5.save!
puts "Created #{car5.make}"

car6 = Car.new(
  make: 'Jaguar',
  model: 'E-Type',
  year: 1970,
  price: 230,
  description: "Mechanically in good condition & all original interior.",
  colour: 'Burgundy',
  capacity: 4,
  location: 'Glasgow',
  user: user
)
car6.photo.attach(io: File.open('app/assets/images/jaguar-e-type.jpg'), filename: "jaguar-e-type.jpg", content_type: "image/jpg")
car6.photo.attach(io: File.open('app/assets/images/jaguar-e-type-2.jpg'), filename: "jaguar-e-type-2.jpg", content_type: "image/jpg")
car6.photo.attach(io: File.open('app/assets/images/jaguar-e-type-3.jpg'), filename: "jaguar-e-type-3.jpg", content_type: "image/jpg")
car6.save!
puts "Created #{car6.make}"

car7 = Car.new(
  make: 'Mercedes-Benz',
  model: '500SL R107',
  year: 1982,
  price: 180,
  description: "Description coming soon. Please do not hesitate to contact us for more information.",
  colour: 'Black',
  capacity: 4,
  location: 'Cambridge',
  user: user
)
car7.photo.attach(io: File.open('app/assets/images/mercedes-sl.jpg'), filename: "mercedes-sl.jpg", content_type: "image/jpg")
car7.photo.attach(io: File.open('app/assets/images/mercedes-sl-2.jpg'), filename: "mercedes-sl-2.jpg", content_type: "image/jpg")
car7.photo.attach(io: File.open('app/assets/images/mercedes-sl-3.jpg'), filename: "mercedes-sl-3.jpg", content_type: "image/jpg")
car7.save!
puts "Created #{car7.make}"

car8 = Car.new(
  make: 'Excalibur',
  model: 'Series V',
  year: 1989,
  price: 250,
  description: "This excellent example of an iconic vehicle is only one of 101 Excalibur Touring Sedan cars ever built and has just 1, 500 miles mileage.",
  colour: 'Metallic Red',
  capacity: 5,
  location: 'Truro',
  user: user
)
car8.photo.attach(io: File.open('app/assets/images/excalibur-series-v.jpg'), filename: "excalibur-series-v.jpg", content_type: "image/jpg")
car8.photo.attach(io: File.open('app/assets/images/excalibur-series-v-2.jpg'), filename: "excalibur-series-v-2.jpg", content_type: "image/jpg")
car8.photo.attach(io: File.open('app/assets/images/excalibur-series-v-3.jpg'), filename: "excalibur-series-v-3.jpg", content_type: "image/jpg")
car8.save!
puts "Created #{car8.make}"

car9 = Car.new(
  make: 'Rover',
  model: 'P6',
  year: 1966,
  price: 220,
  description: "A brilliant piece of British car design, the Rover P6 was launched as the Rover 2000 with a single carburettor version four-cylinder engine in 1963 and won the first European Car of the Year award",
  colour: 'Blue',
  capacity: 5,
  location: 'York',
  user: user
)
car9.photo.attach(io: File.open('app/assets/images/rover-p6.jpg'), filename: "rover-p6.jpg", content_type: "image/jpg")
car9.photo.attach(io: File.open('app/assets/images/rover-p6-2.jpg'), filename: "rover-p6-2.jpg", content_type: "image/jpg")
car9.photo.attach(io: File.open('app/assets/images/rover-p6-3.jpg'), filename: "rover-p6-3.jpg", content_type: "image/jpg")
car9.save!
puts "Created #{car9.make}"

car10 = Car.new(
  make: 'Bentley',
  model: 'MK VI 4.5 Blower Special',
  year: 1951,
  price: 450,
  description: "Fully handmade. A Bentley Special, it is in of itself something of a pleonasm for all Bentley's are themselves special cars however the term Bentley Special is widely attributed to those that started life as a MK VI and have subsequently been recommissioned in the style of a pre-war Bentley",
  colour: 'Black',
  capacity: 1,
  location: 'Portsmouth',
  user: user
)
car10.photo.attach(io: File.open('app/assets/images/bentley-mark-vi.jpg'), filename: "bentley-mark-vi.jpg", content_type: "image/jpg")
car10.photo.attach(io: File.open('app/assets/images/bentley-mark-vi-2.jpg'), filename: "bentley-mark-vi-2.jpg", content_type: "image/jpg")
car10.photo.attach(io: File.open('app/assets/images/bentley-mark-vi-3.jpg'), filename: "bentley-mark-vi-3.jpg", content_type: "image/jpg")
car10.save!
puts "Created #{car10.make}"

puts "Finished!"
