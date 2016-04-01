# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

GardenReview.destroy_all
Allotment.destroy_all
Garden.destroy_all
User.destroy_all

puts "deleting all users"
puts "creating new users"

anne = User.create!(first_name: "Anne", last_name: "Smith", description: "Looking for a garden to grow my tomatoes", email: "anne@gmail.com", password: "password", password_confirmation: "password", photo: File.open(Rails.root.join("db/fixtures/images/users/garden_woman.jpg")))
david = User.create!(first_name: "David", last_name: "Bergema", description: "Looking for a garden to grow strawberries", email: "david@gmail.com", password: "password", password_confirmation: "password", photo: File.open(Rails.root.join("db/fixtures/images/users/garden_man1.jpg")))
sophia = User.create!(first_name: "Sophia", last_name: "Jones", description: "Looking for a garden to plant some weed", email: "sophia@gmail.com", password: "password", password_confirmation: "password", photo: File.open(Rails.root.join("db/fixtures/images/users/garden_vrouw2.jpg")))
anays = User.create!(first_name: "Anays", last_name: "Lamers", description: "Looking for a garden to plant some carrots", email: "anays@gmail.com", password: "password", password_confirmation: "password", photo: File.open(Rails.root.join("db/fixtures/images/users/garden_vrouw2.jpg")))
cecile = User.create!(first_name: "Cecile", last_name: "Venezia", description: "Looking for a garden to plant some ginkgo", email: "cecile@gmail.com", password: "password", password_confirmation: "password", photo: File.open(Rails.root.join("db/fixtures/images/users/person5.jpg")))
freek = User.create!(first_name: "Freek", last_name: "Jansen", description: "Looking for a garden to grow my tomatoes", email: "freek@gmail.com", password: "password", password_confirmation: "password", photo: File.open(Rails.root.join("db/fixtures/images/users/garden_man2.jpg")))
els = User.create!(first_name: "Els", last_name: "Hijmans", description: "Looking for a garden to grow strawberries", email: "els@gmail.com", password: "password", password_confirmation: "password", photo: File.open(Rails.root.join("db/fixtures/images/users/garden_woman.jpg")))
marie = User.create!(first_name: "Marie", last_name: "Hellinga", description: "Looking for a garden to plant some spices", email: "marie@gmail.com", password: "password", password_confirmation: "password", photo: File.open(Rails.root.join("db/fixtures/images/users/garden_vrouw2.jpg")))
lotte = User.create!(first_name: "Lotte", last_name: "de Vries", description: "I have a big garden, but I don't make use of it fully, I would love if someone else could make use of it.", email: "lotte@gmail.com", password: "password", password_confirmation: "password", photo: File.open(Rails.root.join("db/fixtures/images/users/garden_vrouw2.jpg")))


paula = User.create!(first_name: "Paula", last_name: "Brouwer", description: "Looking for a garden to grow some tomatoes", email: "paula@gmail.com", password: "password", password_confirmation: "password", photo: File.open(Rails.root.join("db/fixtures/images/users/garden_vrouw2.jpg")))
jojanneke = User.create!(first_name: "Jojanneke", last_name: "Tamis", description: "Looking for a garden to grow some tomatoes", email: "jojanneke@gmail.com", password: "password", password_confirmation: "password", photo: File.open(Rails.root.join("db/fixtures/images/users/garden_vrouw2.jpg")))
carolien = User.create!(first_name: "Carolien", last_name: "Jonker", description: "Looking for a garden to work in", email: "carolien@gmail.com", password: "password", password_confirmation: "password", photo: File.open(Rails.root.join("db/fixtures/images/users/garden_woman.jpg")))
rianne = User.create!(first_name: "Rianne", last_name: "Rijker", description: "Looking for a garden to grow some tomatoes", email: "rianne@gmail.com", password: "password", password_confirmation: "password", photo: File.open(Rails.root.join("db/fixtures/images/users/garden_vrouw2.jpg")))
vera = User.create!(first_name: "Vera", last_name: "Klerx", description: "Looking for a garden to grow some tomatoes", email: "vera@gmail.com", password: "password", password_confirmation: "password", photo: File.open(Rails.root.join("db/fixtures/images/users/garden_vrouw2.jpg")))

puts "Now there are users"

puts "deleting all gardens"

puts "creating new gardens"

ams0_garden = Garden.create!(title: 'Beautiful garden', owner: anne, address: "Prinsgracht 600", city: "Amsterdam", available: "true", description: "I have space in my garden. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto, assumenda?", photo: File.open(Rails.root.join("db/fixtures/images/gardens/garden1.jpeg")))
sleep(0.3)
ams1_garden = Garden.create!(title: 'Sunny garden', owner: david, address: "Herengracht 435", city: "Amsterdam", available: "true", description: "I have space in my garden. The garden looks really nice. There is a lot of space to plant vegetables. I am very excited to host some greenkeepers in my garden!", photo: File.open(Rails.root.join("db/fixtures/images/gardens/moestuin.jpg")), photo2: File.open(Rails.root.join("db/fixtures/images/gardens/moestuin2.jpg")))
sleep(0.3)
ams2_garden = Garden.create!(title: 'Beautiful garden', owner: sophia, address: "Singel 550", city: "Amsterdam", available: "true", description: "I have space in my garden. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odio, laborum?", photo: File.open(Rails.root.join("db/fixtures/images/gardens/garden1.jpeg")))
sleep(0.3)
ams3_garden = Garden.create!(title: 'Sunny garden', owner: anays, address: "Rozengracht 286", city: "Amsterdam", available: "true", description: "I have space in my garden. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur, hic.", photo: File.open(Rails.root.join("db/fixtures/images/gardens/garden4.jpeg")))
sleep(0.3)
ams4_garden = Garden.create!(title: 'Beautiful garden', owner: cecile, address: "Bethaniendwarsstraat 17", city: "Amsterdam", available: "true", description: "I have a very big garden that I don't use a lot. You could plant flowers in my garden.", photo: File.open(Rails.root.join("db/fixtures/images/gardens/garden2.jpeg")), photo2: File.open(Rails.root.join("db/fixtures/images/gardens/bloemen.jpg")))
sleep(0.3)
ams5_garden = Garden.create!(title: 'Sunny garden', owner: lotte, address: "Rokin 1", city: "Amsterdam", available: "true", description: "I have some extra space in my garden. Come over! Lorem ipsum dolor sit amet, consectetur adipisicing elit. Harum, mollitia?", photo: File.open(Rails.root.join("db/fixtures/images/gardens/garden6.jpeg")))
sleep(0.3)
ams6_garden = Garden.create!(title: 'Sunny garden', owner: freek, address: "Herengracht 200", city: "Amsterdam", available: "true", description: "I have space in my garden. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veniam, aliquam.", photo: File.open(Rails.root.join("db/fixtures/images/gardens/garden7.jpeg")))
sleep(0.3)
ams7_garden = Garden.create!(title: 'Beautiful garden', owner: els, address: "Kinkerstraat 3", city: "Amsterdam", available: "true", description: "I have space in my garden. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Excepturi, assumenda.", photo: File.open(Rails.root.join("db/fixtures/images/gardens/garden8.jpeg")))
sleep(0.3)
ams8_garden = Garden.create!(title: 'Sunny garden', owner: marie, address: "Westerstraat 7", city: "Amsterdam", available: "true", description: "I have some extra space in my garden. Come over! Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nesciunt, natus.", photo: File.open(Rails.root.join("db/fixtures/images/gardens/garden9.jpeg")))


puts "Now there are gardens"

puts "deleting all allotments"

puts "creating new allotments"

rianne_allotment = Allotment.create!(garden: ams1_garden, user: rianne, start_day: "2016-04-30", end_day: "2016-08-30", request_status: "pending", message: "Hi, I would like to work in your garden")
vera_allotment = Allotment.create!(garden: ams1_garden, user: vera, start_day: "2016-04-30", end_day: "2016-08-30", request_status: "pending", message: "Hi, I would like to work in your garden")
vera2_allotment = Allotment.create!(garden: ams0_garden, user: vera, start_day: "2016-04-30", end_day: "2016-05-30", request_status: "pending", message: "Hi, I would like to work in your garden")
paula_allotment = Allotment.create!(garden: ams0_garden, user: paula, start_day: "2016-07-19", end_day: "2016-05-30", request_status: "pending", message: "Hi, I would like to work in your garden")
jojanneke_allotment = Allotment.create!(garden: ams5_garden, user: jojanneke, start_day: "2016-04-30", end_day: "2016-05-30", request_status: "pending", message: "Hi, I would like to work in your garden")
carolien_allotment = Allotment.create!(garden: ams5_garden, user: carolien, start_day: "2016-07-19", end_day: "2016-05-30", request_status: "pending", message: "Hi, I would like to work in your garden")
jojanneke2_allotment = Allotment.create!(garden: ams7_garden, user: jojanneke, start_day: "2016-04-30", end_day: "2016-05-30", request_status: "accepted", message: "Hi, I would like to work in your garden. Can we get in touch? My email is jojanneke@gmail")
carolien2_allotment = Allotment.create!(garden: ams7_garden, user: carolien, start_day: "2016-07-19", end_day: "2016-05-30", request_status: "pending", message: "Hi, I would like to work in your garden")
jojanneke3_allotment = Allotment.create!(garden: ams6_garden, user: jojanneke, start_day: "2016-04-30", end_day: "2016-05-30", request_status: "accepted", message: "Hi, I would like to work in your garden")
carolien3_allotment = Allotment.create!(garden: ams6_garden, user: carolien, start_day: "2016-07-19", end_day: "2016-05-30", request_status: "pending", message: "Hi, I would like to work in your garden")
jojanneke4_allotment = Allotment.create!(garden: ams8_garden, user: jojanneke, start_day: "2016-04-30", end_day: "2016-05-30", request_status: "accepted", message: "Hi, I would like to work in your garden")
carolien4_allotment = Allotment.create!(garden: ams8_garden, user: carolien, start_day: "2016-07-19", end_day: "2016-05-30", request_status: "pending", message: "Hi, I would like to work in your garden")

puts "Now there are allotments"

# david_allotment.garden_reviews.create!(user: david, description: "Really good garden. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Placeat culpa nulla eaque provident, quibusdam dolorem eos enim quia ducimus ea. Earum aperiam, voluptates odio. Asperiores quibusdam quisquam nisi. ", stars: 5)
# sophia_allotment.garden_reviews.create!(user: sophia, description: "Nice garden. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Placeat culpa nulla eaque provident, quibusdam dolorem eos enim quia ducimus ea. Earum aperiam, voluptates odio.", stars: 4)
# jojanneke_allotment.garden_reviews.create!(user: jojanneke, description: "Really good garden! Lots of sun so my tomaties turned out great. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Placeat culpa nulla eaque provident, quibusdam dolorem eos enim quia ducimus ea. Earum aperiam, voluptates odio. Asperiores quibusdam quisquam nisi. ", stars: 5)
# carolien_allotment.garden_reviews.create!(user: carolien, description: "Nice garden! I planted some flowers in the back, but the rest was already well maintained. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Placeat culpa nulla eaque provident, quibusdam dolorem eos enim quia ducimus ea. Earum aperiam, voluptates odio.", stars: 4)
# jojanneke2_allotment.garden_reviews.create!(user: jojanneke, description: "Really good garden! Lots of sun so my tomaties turned out great. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Placeat culpa nulla eaque provident, quibusdam dolorem eos enim quia ducimus ea. Earum aperiam, voluptates odio. Asperiores quibusdam quisquam nisi ", stars: 5)
# carolien2_allotment.garden_reviews.create!(user: carolien, description: "Nice garden! I planted some flowers in the back, but the rest was already well maintained. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Placeat culpa nulla eaque provident, quibusdam dolorem eos enim quia ducimus ea. Earum aperiam, voluptates odio. Asperiores quibusdam quisquam nisi.", stars: 4)
# jojanneke3_allotment.garden_reviews.create!(user: jojanneke, description: "Really good garden! Lots of sun so my tomaties turned out great. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Placeat culpa nulla eaque provident, quibusdam dolorem eos enim quia ducimus ea. Earum aperiam, voluptates odio.", stars: 5)
# carolien3_allotment.garden_reviews.create!(user: carolien, description: "Nice garden! I planted some flowers in the back, but the rest was already well maintained,. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Placeat culpa nulla eaque provident, quibusdam dolorem eos enim quia ducimus ea. Earum aperiam, voluptates odio. ", stars: 4)
# jojanneke4_allotment.garden_reviews.create!(user: jojanneke, description: "Really good garden! Lots of sun so my tomaties turned out great. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Placeat culpa nulla eaque provident, quibusdam dolorem eos enim quia ducimus ea. Earum aperiam, voluptates odio. Asperiores quibusdam quisquam nisi ", stars: 5)
# carolien4_allotment.garden_reviews.create!(user: carolien, description: "Nice garden! I planted some flowers in the back, but the rest was already well maintained. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Placeat culpa nulla eaque provident, quibusdam dolorem eos enim quia ducimus ea. Earum aperiam, voluptates odio.", stars: 4)



# anne.owner_reviews.create!(user: david, description: "Nice person", stars: 5)
# anne.owner_reviews.create!(user: sophia, description: "Kind person", stars: 3)
# paula.owner_reviews.create!(user: jojanneke, description: "Nice person, is a good gardener and gave me some of her tomatoes! Lorem ipsum dolor sit amet, consectetur adipisicing elit. Placeat culpa nulla eaque provident, quibusdam dolorem eos enim quia ducimus ea.", stars: 5)
# paula.owner_reviews.create!(user: carolien, description: "Really nice person, planted some beautiful flowers in my garden. She is always welcome back. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Placeat culpa nulla eaque provident, quibusdam dolorem eos enim quia ducimus ea. Earum aperiam, voluptates odio. ", stars: 3)
# freek.owner_reviews.create!(user: jojanneke, description: "Nice person, is a good gardener and gave me some of her tomatoes! Lorem ipsum dolor sit amet, consectetur adipisicing elit. Placeat culpa nulla eaque provident, quibusdam dolorem eos enim quia ducimus ea. Earum aperiam, voluptates odio. Asperiores quibusdam quisquam nisi ", stars: 5)
# freek.owner_reviews.create!(user: carolien, description: "Really nice person, planted some beautiful flowers in my garden. She is always welcome back. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Placeat culpa nulla eaque provident, quibusdam dolorem eos enim quia ducimus ea. Earum aperiam, voluptates odio. Asperiores quibusdam.", stars: 3)
# els.owner_reviews.create!(user: jojanneke, description: "Nice person, is a good gardener and gave me some of her tomatoes! Lorem ipsum dolor sit amet, consectetur adipisicing elit. Placeat culpa nulla eaque provident, quibusdam dolorem eos enim quia ducimus ea. Earum aperiam, voluptates odio. Asperiores qui.", stars: 5)
# els.owner_reviews.create!(user: carolien, description: "Really nice person, planted some beautiful flowers in my garden. She is always welcome back. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Placeat culpa nulla eaque provident, quibusdam dolorem eos enim quia ducimus ea. Earum aperiam, voluptates odio. Asperiores quibusdam quisquam nisi.", stars: 3)
# marie.owner_reviews.create!(user: jojanneke, description: "Nice person, is a good gardener and gave me some of her tomatoes! Lorem ipsum dolor sit amet, consectetur adipisicing elit. Placeat culpa nulla eaque provident, quibusdam dolorem eos enim quia ducimus ea. Earum aperiam, voluptates odio. ", stars: 5)
# marie.owner_reviews.create!(user: carolien, description: "Really nice person, planted some beautiful flowers in my garden. She is always welcome back. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Placeat culpa nulla eaque provident, quibusdam dolorem eos enim quia ducimus ea. Earum aperiam, voluptates odio. Asperiores quibusdam quisquam nisi.", stars: 3)

# puts "Now there are reviews"
