
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

kalle = User.create!(first_name: "Kalle", last_name: "Andersson", email: "kalle@andersson.se", password: "123456")

Bike.create!(title: "Amazing Bike for rent", description: "Amazing bike, the best, tremendous!", price_per_day: 14.35, user: kalle, bike_type: "mountainbike")
Bike.create!(title: "Shitty Bike for rent", description: "Shitty bike, the worst, it sucks!", price_per_day: 3.35, user: kalle, bike_type: "town bike")
Bike.create!(title: "Cool Bike for rent", description: "Coolest bike!", price_per_day: 14.35, user: kalle, bike_type: "cross country")
Bike.create!(title: "Ugly Bike for rent", description: "Ugly bike!", price_per_day: 3.35, user: kalle, bike_type: "dirt bike")
