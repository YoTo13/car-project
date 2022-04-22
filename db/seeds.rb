# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Car.destroy_all

Car.create!(brand: "Toyota", model: "Auris Touring Sports break", price: "350", car_image: "Auris_touring_Sports_break.jpg")
Car.create!(brand: "Nissan", model: "350z", price: "400", car_image: "Nissan_350z.jpg")
Car.create!(brand: "Nissan", model: "skyline", price: "380", car_image: "Nissan_skyline.jpg")
Car.create!(brand: "Honda", model: "Civic", price: "430", car_image: "Honda_civic.jpg")
