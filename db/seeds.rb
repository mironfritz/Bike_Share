
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "creating users"
kalle = User.create!(first_name: "Kalle", last_name: "Andersson", email: "kalle@something.se", password: "123456")
stefan = User.create!(first_name: "Stefan", last_name: "Hybschmann", email: "Hybschmann@stefan.se", password: "234567")
juljan = User.create!(first_name: "Juljan", last_name: "Haka", email: "juljan@juljan.se", password: "345678")
jea = User.create!(first_name: "Jea", last_name: "Munda", email: "munda@clouds.se", password: "456789")
sander = User.create!(first_name: "Sander", last_name: "Nobel", email: "sander@nobel.se", password: "223222")
yves = User.create!(first_name: "Yves", last_name: "Lesaffre", email: "yves@lewagon.se", password: "332333")
toni = User.create!(first_name: "Toni", last_name: "Panacek", email: "toni@panacek.se", password: "442444")
alex = User.create!(first_name: "Alex", last_name: "Java", email: "alex@alex1234.se", password: "555545")
vilhelm = User.create!(first_name: "Vilhelm", last_name: "Sjölander", email: "vilhelm@sj.se", password: "748373")
jimmy = User.create!(first_name: "Jimmy", last_name: "Charles", email: "jimmycharles@icloud.se", password: "4398137")
antonio = User.create!(first_name: "Antonio", last_name: "Mangare", email: "antonio@pizza.se", password: "9292833")
trish = User.create!(first_name: "Trish", last_name: "Sun", email: "trish@sun.se", password: "2364756")
billy = User.create!(first_name: "Billy", last_name: "Leung", email: "billy@leung.se", password: "2325443")
valentin = User.create!(first_name: "Valentin", last_name: "Kremer", email: "valentin@kremer.se", password: "5359556")
anna = User.create!(first_name: "Anna", last_name: "Thomson", email: "anna@thomson.se", password: "4458226")
millan = User.create!(first_name: "Millan", last_name: "Garcia", email: "millan@hi.se", password: "8595846")
malin = User.create!(first_name: "Malin", last_name: "Vannesjo", email: "malin@bye.se", password: "2223345")
miron = User.create!(first_name: "Miron", last_name: "Fritz", email: "miron@no.se", password: "2342355")
jenny = User.create!(first_name: "Jenny", last_name: "Schneider", email: "jenny@yes.se", password: "567895")

puts "users created successfully"

puts "creating bikes ..."

mountainbike = Bike.create!(title: "Amazing Mountainbike", user: kalle, bike_type: "mountainbike",
  description: "Amazing bike! Quickly to book, great to ride. New tires included.", price_per_day: 14.35, address: "Lillängsvägen 5, 131 41 Nacka")
file = URI.open("https://res.cloudinary.com/dcxnu8gpn/image/upload/v1594986592/Decathlon-Stilus-Full-Suspension-Electric-Mountain-Bike-1-618x445_ka1l6k.png")
mountainbike.photo.attach(io: file, filename: 'mountainbike.png', content_type: 'image/png')

mountainbike_two = Bike.create!(title: "Fast mountainbike", user: stefan, bike_type: "mountainbike",
  description: "Only one year old and perfect for a mountainbike trip on a sunny weekend.", price_per_day: 18, address: "Medborgarplatsen 3, 118 26 Stockholm")
file = URI.open("https://res.cloudinary.com/dcxnu8gpn/image/upload/v1594976843/riley-harrison-9TNGeodpVEA-unsplash_oanlum.jpg")
mountainbike.photo.attach(io: file, filename: 'mountainbike_two.jpg', content_type: 'image/jpg')

mountainbike_three = Bike.create!(title: "Fun in the wild", user: sander, bike_type: "mountainbike",
  description: "3yrs old, nice to rent, easy to ride, flexible and nice for mountainbiking!", price_per_day: 12, address: "Bondegatan 70, 116 34 Stockholm")
file = URI.open("https://res.cloudinary.com/dcxnu8gpn/image/upload/v1594976844/philip-hawkshaw-ljpzTWHDGyM-unsplash_kcd4up.jpg")
mountainbike.photo.attach(io: file, filename: 'mountainbike_three.jpg', content_type: 'image/jpg')

mountainbike_four = Bike.create!(title: "New mountainbike", user: jimmy, bike_type: "mountainbike",
  description: "You can do everything with this bike: speed down flow trails, tour extensively, or simply have fun biking around from time to time.",
  price_per_day: 28, address: "Norra Agnegatan 37, 112 29 Stockholm")
file = URI.open("https://res.cloudinary.com/dcxnu8gpn/image/upload/v1594976819/flynn-tesoriero-RaWG8ofq4S8-unsplash_a32bbq.jpg")
mountainbike.photo.attach(io: file, filename: 'mountainbike_four.jpg', content_type: 'image/jpg')

mountainbike_five = Bike.create!(title: "Rent a mountainbike", user: vilhelm, bike_type: "mountainbike",
  description: "A little bit older but still great for any trail.There’s no need for you to compromise. You get a lightweight carbon frame with 130mm of travel in front and 120mm at the rear, outstanding climbing ability and agile riding",
  price_per_day: 8.99, address: "Roslagsgatan 40, 113 54 Stockholm")
file = URI.open("https://res.cloudinary.com/dcxnu8gpn/image/upload/v1594976796/crot-Mza6Hja4a0I-unsplash_v70yyb.jpg")
mountainbike.photo.attach(io: file, filename: 'mountainbike_five.jpg', content_type: 'image/jpg')

citybike = Bike.create!(title: "Bike for the city", user: juljan, bike_type: "citybike",
  description: "Old but fine. Could have some issues but it's cheap to rent", price_per_day: 5, address: "Hagalundsgatan 42, 169 66 Solna")
file = URI.open("https://res.cloudinary.com/dcxnu8gpn/image/upload/v1594976845/ryan-dam-AWPIiZ6PHxk-unsplash_u5bcy2.jpg")
citybike.photo.attach(io: file, filename: 'citybike.jpg', content_type: 'image/jpg')

citybike_two = Bike.create!(title: "Stockholm city bike", user: jea, bike_type: "citybike",
  description: "Cute bike to ride in the city, 3 years old, nice color, works fine.", price_per_day: 4, address: "Sveavägen 57, 113 59 Stockholm")
file = URI.open("https://res.cloudinary.com/dcxnu8gpn/image/upload/v1594986585/concha-mayo-FeURlyigwjw-unsplash_nldxt2.jpg")
citybike.photo.attach(io: file, filename: 'citybike_two.jpg', content_type: 'image/jpg')

citybike_three = Bike.create!(title: "Tourist bike", user: alex, bike_type: "citybike",
  description: "Rent this for your perfect city pictures in Stockholm", price_per_day: 7.50, address: "Sibyllegatan 28, 114 42 Stockholm")
file = URI.open("https://res.cloudinary.com/dcxnu8gpn/image/upload/v1594976802/korie-cull-W5jFLIht03U-unsplash_gwvuv3.jpg")
citybike.photo.attach(io: file, filename: 'citybike_three.jpg', content_type: 'image/jpg')

citybike_four = Bike.create!(title: "Simple bike", user: yves, bike_type: "citybike",
  description: "Good for riding to your work or discovering the city", price_per_day: 4, address: "Blekingegatan 33, 116 62 Stockholm")
file = URI.open("https://res.cloudinary.com/dcxnu8gpn/image/upload/v1594976796/chris-barbalis-Lpqg7ypu2B4-unsplash_phe5pv.jpg")
citybike.photo.attach(io: file, filename: 'citybike_four.jpg', content_type: 'image/jpg')

ebike = Bike.create!(title: "Electric cruiser bike", user: valentin, bike_type: "e-bike",
  description: "Powerful Hill Climbing: 65NM high-torque 48v/500w motor, Lightweight: Only 49 lbs, with rust resistant aluminum frame, Finest 48v 14Ah Samsung battery", price_per_day: 18.20, address: "Sankt Paulsgatan 10, 118 46 Stockholm")
file = URI.open("https://res.cloudinary.com/dcxnu8gpn/image/upload/v1594976749/tower-electric-bikes-hv0jG8HjTd4-unsplash_ccjowt.jpg")
ebike.photo.attach(io: file, filename: 'ebike.jpg', content_type: 'image/jpg')

flowerbike = Bike.create!(title: "Flower power bike", user: anna, bike_type: "flowerbike",
  description: "Cute girly bike. Nothing special, but pretty to look at! Easy to ride.", price_per_day: 6.50, address: "Skulptörvägen 4, 121 43 Johanneshov")
file = URI.open("https://res.cloudinary.com/dcxnu8gpn/image/upload/v1594976765/wolfgang-rottmann-Ft3iIATZkTg-unsplash_oufzns.jpg")
flowerbike.photo.attach(io: file, filename: 'flowerbike.jpg', content_type: 'image/jpg')

tandembike = Bike.create!(title: "Funny tandembike", user: toni, bike_type: "tandembike",
  description: "Ride tandem together - slow but awesome", price_per_day: 14, address: "Hornsgatan 39B, 118 49 Stockholm")
file = URI.open("https://res.cloudinary.com/dcxnu8gpn/image/upload/v1594986144/672b04f9e44fa80dfb9810e118265443_xfc8eh.jpg")
tandembike.photo.attach(io: file, filename: 'tandembike.jpg', content_type: 'image/jpg')

boxbike = Bike.create!(title: "Bike with useful box", user: millan, bike_type: "boxbike",
  description: "This bike has a small box where you can transport your groceries or whatever you like. Pretty handy.", price_per_day: 6.79, address: "Hornsgatan 39B, 118 49 Stockholm")
file = URI.open("https://res.cloudinary.com/dcxnu8gpn/image/upload/v1594986559/bbf-e-bike-miami-e-bike_c7upzi.jpg")
tandembike.photo.attach(io: file, filename: 'boxbike.jpg', content_type: 'image/jpg')

boxbike_two = Bike.create!(title: "Transportation bike", user: malin, bike_type: "boxbike",
  description: "Your kids would love this.", price_per_day: 10, address: "Ringvägen 87, 118 61 Stockholm")
file = URI.open("https://res.cloudinary.com/dcxnu8gpn/image/upload/v1594986627/seaside_bike_brown_side_2020-1-1024x683_sf8ycx.jpg")
boxbike.photo.attach(io: file, filename: 'boxbike_two.jpg', content_type: 'image/jpg')

mountainbike_six = Bike.create!(title: "Berlin city bike", user: miron, bike_type: "citybike",
  description: "White sporty bike. A lot of fun to ride around the citycenter.", price_per_day: 17, address: "Oranienburger Str. 27, 10117 Berlin, Germany")
file = URI.open("https://res.cloudinary.com/dcxnu8gpn/image/upload/v1594976832/pascal-obermeier-YOphb-Xr2sk-unsplash_wdvwmi.jpg")
mountainbike.photo.attach(io: file, filename: 'mountainbike_six.jpg', content_type: 'image/jpg')

citybike_five = Bike.create!(title: "Small bike", user: jenny, bike_type: "citybike",
  description: "4 years old, brownish color, small.", price_per_day: 9, address: "Borups Allé 126, 130, 2000 Frederiksberg, Denmark")
file = URI.open("https://res.cloudinary.com/dcxnu8gpn/image/upload/v1594986617/markus-spiske-FzA40q6nDiA-unsplash_qm248r.jpg")
citybike.photo.attach(io: file, filename: 'citybike_five.jpg', content_type: 'image/jpg')

puts "bikes created successfully"

# sisi = Pet.create!(name: "Sisi", user: User.first, pet_category: "Cat",
#   age: 4, description: "Sisi is very playful and loves to cuddle. She doesn't bite",
#   price_per_day: 120, start_date: DateTime.parse("10/04/2020"), end_date: DateTime.parse("20/04/2020"), total_price: 120000)
# file = URI.open("https://res.cloudinary.com/sano2019/image/upload/v1584560812/CDqh3ogUZCwciM5SNsEeyhwH.jpg")
# sisi.image.attach(io: file, filename: 'sisi.png', content_type: 'image/png')
















