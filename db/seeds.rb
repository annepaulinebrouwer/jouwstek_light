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

anne = User.create!(first_name: "Anne", last_name: "Smith", description: "Looking for a garden to grow my tomatoes", email: "asmith@gmail.com", password: "password", password_confirmation: "password", photo: File.open(Rails.root.join("db/fixtures/images/users/garden_woman.jpg")))
harry = User.create!(first_name: "Harry", last_name: "Kip", description: "Looking for a garden to grow strawberries", email: "blabla@gmail.com", password: "password", password_confirmation: "password", photo: File.open(Rails.root.join("db/fixtures/images/users/garden_man1.jpg")))
sophia = User.create!(first_name: "Sophia", last_name: "Jones", description: "Looking for a garden to plant some weed", email: "sophia@gmail.com", password: "password", password_confirmation: "password", photo: File.open(Rails.root.join("db/fixtures/images/users/garden_vrouw2.jpg")))
anays = User.create!(first_name: "Anays", last_name: "Lamers", description: "Looking for a garden to plant some carrots", email: "anays@gmail.com", password: "password", password_confirmation: "password", photo: File.open(Rails.root.join("db/fixtures/images/users/garden_vrouw2.jpg")))
cecile = User.create!(first_name: "Cecile", last_name: "Venezia", description: "Looking for a garden to plant some ginkgo", email: "cecile@gmail.com", password: "password", password_confirmation: "password", photo: File.open(Rails.root.join("db/fixtures/images/users/garden_vrouw2.jpg")))

paula = User.create!(first_name: "Paula", last_name: "Dylan", description: "I have a big garden, but I don't make use of it fully, I would love if someone else could make use of it.", email: "paula@gmail.com", password: "password", password_confirmation: "password", photo: File.open(Rails.root.join("db/fixtures/images/users/garden_vrouw2.jpg")))
jojanneke = User.create!(first_name: "Jojanneke", last_name: "Tamis", description: "Looking for a garden to grow some tomatoes", email: "jojanneke@gmail.com", password: "password", password_confirmation: "password", photo: File.open(Rails.root.join("db/fixtures/images/users/garden_vrouw2.jpg")))
carolien = User.create!(first_name: "Carolien", last_name: "Jonkers", description: "Looking for a garden to work in", email: "carolien@gmail.com", password: "password", password_confirmation: "password", photo: File.open(Rails.root.join("db/fixtures/images/users/garden_woman.jpg")))
freek = User.create!(first_name: "Freek", last_name: "Jansen", description: "Looking for a garden to grow my tomatoes", email: "freek@gmail.com", password: "password", password_confirmation: "password", photo: File.open(Rails.root.join("db/fixtures/images/users/garden_man2.jpg")))
els = User.create!(first_name: "Els", last_name: "Hijmans", description: "Looking for a garden to grow strawberries", email: "els@gmail.com", password: "password", password_confirmation: "password", photo: File.open(Rails.root.join("db/fixtures/images/users/garden_woman.jpg")))
marie = User.create!(first_name: "Marie", last_name: "Hellinga", description: "Looking for a garden to plant some spices", email: "marie@gmail.com", password: "password", password_confirmation: "password", photo: File.open(Rails.root.join("db/fixtures/images/users/garden_vrouw2.jpg")))

puts "Now there are users"

puts "deleting all gardens"

puts "creating new gardens"

ams0_garden = Garden.create!(title: 'Beautiful garden', owner: anne, address: "Prinsgracht 600, Amsterdam", available: "true", description: "I have space in my garden", photo: File.open(Rails.root.join("db/fixtures/images/gardens/garden1.jpeg")))
sleep(0.3)
ams1_garden = Garden.create!(title: 'Sunny garden', owner: harry, address: "Herengracht 435, Amsterdam", available: "true", description: "I have space in my garden", photo: File.open(Rails.root.join("db/fixtures/images/gardens/garden2.jpeg")))
sleep(0.3)
ams2_garden = Garden.create!(title: 'Beautiful garden', owner: sophia, address: "Singel 550, Amsterdam", available: "true", description: "I have space in my garden", photo: File.open(Rails.root.join("db/fixtures/images/gardens/garden1.jpeg")))
sleep(0.3)
ams3_garden = Garden.create!(title: 'Sunny garden', owner: anays, address: "Rozengracht 286, Amsterdam", available: "true", description: "I have space in my garden", photo: File.open(Rails.root.join("db/fixtures/images/gardens/garden4.jpeg")))
sleep(0.3)
ams4_garden = Garden.create!(title: 'Beautiful garden', owner: cecile, address: "Bethaniendwarsstraat 17, Amsterdam", available: "true", description: "I have space in my garden", photo: File.open(Rails.root.join("db/fixtures/images/gardens/garden5.jpeg")))
sleep(0.3)
ams5_garden = Garden.create!(title: 'Sunny garden', owner: paula, address: "Rokin 1, Amsterdam", available: "true", description: "I have some extra space in my garden. Come over!", photo: File.open(Rails.root.join("db/fixtures/images/gardens/garden6.jpeg")))
sleep(0.3)
ams6_garden = Garden.create!(title: 'Sunny garden', owner: freek, address: "Herengracht 200, Amsterdam", available: "true", description: "I have space in my garden", photo: File.open(Rails.root.join("db/fixtures/images/gardens/garden7.jpeg")))
sleep(0.3)
ams7_garden = Garden.create!(title: 'Beautiful garden', owner: els, address: "Kinkerstraat 3, Amsterdam", available: "true", description: "I have space in my garden", photo: File.open(Rails.root.join("db/fixtures/images/gardens/garden8.jpeg")))
sleep(0.3)
ams8_garden = Garden.create!(title: 'Sunny garden', owner: marie, address: "Westerstraat 7, Amsterdam", available: "true", description: "I have some extra space in my garden. Come over!", photo: File.open(Rails.root.join("db/fixtures/images/gardens/garden9.jpeg")))


puts "Now there are gardens"

puts "deleting all allotments"

puts "creating new allotments"

harry_allotment = Allotment.create!(garden: ams0_garden, user: harry, start_day: "2016-04-30", request_status: "pending", message: "Hi, I would like to work in your garden")
sophia_allotment = Allotment.create!(garden: ams0_garden, user: sophia, start_day: "2016-07-19", request_status: "pending", message: "Hi, I would like to work in your garden")
jojanneke_allotment = Allotment.create!(garden: ams5_garden, user: jojanneke, start_day: "2016-04-30", request_status: "pending", message: "Hi, I would like to work in your garden")
carolien_allotment = Allotment.create!(garden: ams5_garden, user: carolien, start_day: "2016-07-19", request_status: "pending", message: "Hi, I would like to work in your garden")
jojanneke2_allotment = Allotment.create!(garden: ams7_garden, user: jojanneke, start_day: "2016-04-30", request_status: "accepted", message: "Hi, I would like to work in your garden")
carolien2_allotment = Allotment.create!(garden: ams7_garden, user: carolien, start_day: "2016-07-19", request_status: "pending", message: "Hi, I would like to work in your garden")
jojanneke3_allotment = Allotment.create!(garden: ams6_garden, user: jojanneke, start_day: "2016-04-30", request_status: "accepted", message: "Hi, I would like to work in your garden")
carolien3_allotment = Allotment.create!(garden: ams6_garden, user: carolien, start_day: "2016-07-19", request_status: "pending", message: "Hi, I would like to work in your garden")
jojanneke4_allotment = Allotment.create!(garden: ams8_garden, user: jojanneke, start_day: "2016-04-30", request_status: "accepted", message: "Hi, I would like to work in your garden")
carolien4_allotment = Allotment.create!(garden: ams8_garden, user: carolien, start_day: "2016-07-19", request_status: "pending", message: "Hi, I would like to work in your garden")

puts "Now there are allotments"

harry_allotment.garden_reviews.create!(user: harry, description: "Really good garden. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Placeat culpa nulla eaque provident, quibusdam dolorem eos enim quia ducimus ea. Earum aperiam, voluptates odio. Asperiores quibusdam quisquam nisi. ", stars: 5)
sophia_allotment.garden_reviews.create!(user: sophia, description: "Nice garden. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Placeat culpa nulla eaque provident, quibusdam dolorem eos enim quia ducimus ea. Earum aperiam, voluptates odio.", stars: 4)
jojanneke_allotment.garden_reviews.create!(user: jojanneke, description: "Really good garden! Lots of sun so my tomaties turned out great. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Placeat culpa nulla eaque provident, quibusdam dolorem eos enim quia ducimus ea. Earum aperiam, voluptates odio. Asperiores quibusdam quisquam nisi. ", stars: 5)
carolien_allotment.garden_reviews.create!(user: carolien, description: "Nice garden! I planted some flowers in the back, but the rest was already well maintained. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Placeat culpa nulla eaque provident, quibusdam dolorem eos enim quia ducimus ea. Earum aperiam, voluptates odio.", stars: 4)
jojanneke2_allotment.garden_reviews.create!(user: jojanneke, description: "Really good garden! Lots of sun so my tomaties turned out great. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Placeat culpa nulla eaque provident, quibusdam dolorem eos enim quia ducimus ea. Earum aperiam, voluptates odio. Asperiores quibusdam quisquam nisi ", stars: 5)
carolien2_allotment.garden_reviews.create!(user: carolien, description: "Nice garden! I planted some flowers in the back, but the rest was already well maintained. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Placeat culpa nulla eaque provident, quibusdam dolorem eos enim quia ducimus ea. Earum aperiam, voluptates odio. Asperiores quibusdam quisquam nisi.", stars: 4)
jojanneke3_allotment.garden_reviews.create!(user: jojanneke, description: "Really good garden! Lots of sun so my tomaties turned out great. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Placeat culpa nulla eaque provident, quibusdam dolorem eos enim quia ducimus ea. Earum aperiam, voluptates odio.", stars: 5)
carolien3_allotment.garden_reviews.create!(user: carolien, description: "Nice garden! I planted some flowers in the back, but the rest was already well maintained,. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Placeat culpa nulla eaque provident, quibusdam dolorem eos enim quia ducimus ea. Earum aperiam, voluptates odio. ", stars: 4)
jojanneke4_allotment.garden_reviews.create!(user: jojanneke, description: "Really good garden! Lots of sun so my tomaties turned out great. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Placeat culpa nulla eaque provident, quibusdam dolorem eos enim quia ducimus ea. Earum aperiam, voluptates odio. Asperiores quibusdam quisquam nisi ", stars: 5)
carolien4_allotment.garden_reviews.create!(user: carolien, description: "Nice garden! I planted some flowers in the back, but the rest was already well maintained. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Placeat culpa nulla eaque provident, quibusdam dolorem eos enim quia ducimus ea. Earum aperiam, voluptates odio.", stars: 4)



anne.owner_reviews.create!(user: harry, description: "Nice person", stars: 5)
anne.owner_reviews.create!(user: sophia, description: "Kind person", stars: 3)
paula.owner_reviews.create!(user: jojanneke, description: "Nice person, is a good gardener and gave me some of her tomatoes! Lorem ipsum dolor sit amet, consectetur adipisicing elit. Placeat culpa nulla eaque provident, quibusdam dolorem eos enim quia ducimus ea.", stars: 5)
paula.owner_reviews.create!(user: carolien, description: "Really nice person, planted some beautiful flowers in my garden. She is always welcome back. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Placeat culpa nulla eaque provident, quibusdam dolorem eos enim quia ducimus ea. Earum aperiam, voluptates odio. ", stars: 3)
freek.owner_reviews.create!(user: jojanneke, description: "Nice person, is a good gardener and gave me some of her tomatoes! Lorem ipsum dolor sit amet, consectetur adipisicing elit. Placeat culpa nulla eaque provident, quibusdam dolorem eos enim quia ducimus ea. Earum aperiam, voluptates odio. Asperiores quibusdam quisquam nisi ", stars: 5)
freek.owner_reviews.create!(user: carolien, description: "Really nice person, planted some beautiful flowers in my garden. She is always welcome back. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Placeat culpa nulla eaque provident, quibusdam dolorem eos enim quia ducimus ea. Earum aperiam, voluptates odio. Asperiores quibusdam.", stars: 3)
els.owner_reviews.create!(user: jojanneke, description: "Nice person, is a good gardener and gave me some of her tomatoes! Lorem ipsum dolor sit amet, consectetur adipisicing elit. Placeat culpa nulla eaque provident, quibusdam dolorem eos enim quia ducimus ea. Earum aperiam, voluptates odio. Asperiores qui.", stars: 5)
els.owner_reviews.create!(user: carolien, description: "Really nice person, planted some beautiful flowers in my garden. She is always welcome back. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Placeat culpa nulla eaque provident, quibusdam dolorem eos enim quia ducimus ea. Earum aperiam, voluptates odio. Asperiores quibusdam quisquam nisi.", stars: 3)
marie.owner_reviews.create!(user: jojanneke, description: "Nice person, is a good gardener and gave me some of her tomatoes! Lorem ipsum dolor sit amet, consectetur adipisicing elit. Placeat culpa nulla eaque provident, quibusdam dolorem eos enim quia ducimus ea. Earum aperiam, voluptates odio. ", stars: 5)
marie.owner_reviews.create!(user: carolien, description: "Really nice person, planted some beautiful flowers in my garden. She is always welcome back. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Placeat culpa nulla eaque provident, quibusdam dolorem eos enim quia ducimus ea. Earum aperiam, voluptates odio. Asperiores quibusdam quisquam nisi.", stars: 3)

puts "Now there are reviews"
