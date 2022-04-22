# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Car.destroy_all

Car.create!(brand: "Toyota", model: "Auris Touring Sports break", price: "35 000")
Car.create!(brand: "Nissan", model: "350z", price: "40 000")
Car.create!(brand: "Nissan", model: "skyline", price: "38 000")
Car.create!(brand: "Honda", model: "Civic", price: "43 000")
