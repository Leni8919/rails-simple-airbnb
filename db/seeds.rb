# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

10.times do |flat|
  flat = Flat.new
  flat.name = Faker::Hipster.sentence
  flat.address = Faker::Address.full_address
  flat.description = Faker::Hipster.sentences
  flat.price_per_night = rand(100)
  flat.number_of_guests = rand(10)
  flat.save!
end
