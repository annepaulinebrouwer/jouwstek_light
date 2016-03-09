# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


puts "deleting all users"

User.destroy_all

puts "creating new users"


anne = User.create!(first_name: "Anne", last_name: "Smith", description: "Looking for a garden to grow my tomatoes", email: "asmith@gmail.com", password: "password", password_confirmation: "password")
harry = User.create!(first_name: "Harry", last_name: "Kip", description: "Looking for a garden to grow strawberries", email: "blabla@gmail.com", password: "password", password_confirmation: "password")
sophia = User.create!(first_name: "Sophia", last_name: "Jones", description: "Looking for a garden to plant some weed", email: "sophia@gmail.com", password: "password", password_confirmation: "password")


puts "Now there are users"

puts "deleting all gardens"

Garden.destroy_all

puts "creating new gardens"


ams0_garden = Garden.create!(title: 'Beautiful garden', owner: anne, address: "Wibautstraat 10, Amsterdam", available: "true", description: "I have space in my garden")
ams1_garden = Garden.create!(title: 'Sunny garden', owner: anne, address: "Arena Boulevard 1, Amsterdam", available: "true", description: "I have space in my garden")
ams2_garden = Garden.create!(title: 'Beautiful garden', owner: anne, address: "Singel 250, Amsterdam", available: "true", description: "I have space in my garden")
ams3_garden = Garden.create!(title: 'Sunny garden', owner: anne, address: "Oostenburgervoorstraat 286, Amsterdam", available: "true", description: "I have space in my garden")
ams4_garden = Garden.create!(title: 'Beautiful garden', owner: anne, address: "Bethaniendwarsstraat 17, Amsterdam", available: "true", description: "I have space in my garden")
ams5_garden = Garden.create!(title: 'Sunny garden', owner: anne, address: "Rokin 1, Amsterdam", available: "true", description: "Come over!")

puts "Now there are gardens"

puts "deleting all allotments"

Allotment.destroy_all

puts "creating new allotments"

harry_allotment = Allotment.create!(garden: ams0_garden, user: harry, start_day: "2016-04-30", request_status: "pending", message: "Hi, I would like to work in your garden")
sophia_allotment = Allotment.create!(garden: ams0_garden, user: sophia, start_day: "2016-07-19", request_status: "pending", message: "Hi, I would like to work in your garden")

puts "Now there are allotments"

GardenReview.destroy_all

harry_allotment.garden_reviews.create!(user: harry, description: "Really good garden", stars: 5)
sophia_allotment.garden_reviews.create!(user: sophia, description: "Nice garden", stars: 4)

anne.owner_reviews.create!(user: harry, description: "Nice person", stars: 5)
anne.owner_reviews.create!(user: sophia, description: "Kind person", stars: 3)
