# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts "cleaning db..."

GardenReview.destroy_all
Allotment.destroy_all
Garden.destroy_all
User.destroy_all

##################################################

puts "creating users..."

david = User.new({
  email: "david@gmail.com",
  password: "password",
  password_confirmation: "password",
  first_name: "David",
  last_name: "Bergema",
  description: "Hi, I am David. I am 28 years old and I am working as a freelance copywriter. I have lived in Amsterdam my whole lived. Two years ago I started a project in my neighborhood. Each Saturday me and a few neighbors work together at our own allotment. We all have our own trays in which we grow veggies. If you want to join, feel free! ",
})
david[:photo] = "v1459502027/bqwiaw260c7jbm95vy3u.jpg"
david.save!

sophia = User.new({
  email: "sophia@gmail.com",
  password: "password",
  password_confirmation: "password",
  first_name: "Sophia",
  last_name: "Jones",
  description: "Hi! I am Sophia Jones, 30 years old and I am living in the center of Amsterdam. I am originally from UK, but 5 years ago I have moved to Amsterdam. I have a big garden available which I would like to share with you. Send me a message if you're interested in working in my garden!",
})
sophia[:photo] = "v1459499650/kxvtiomkiw3tckxezeil.jpg"
sophia.save!

lotte = User.new({
  email: "lotte@gmail.com",
  password: "password",
  password_confirmation: "password",
  first_name: "Lotte",
  last_name: "de Vries",
  description: "I am Lotte and I am living in Amsterdam with my family. I have a big garden that I want to share with another Amsterdammer. Send a message when you're interested!",
})
lotte[:photo] = "v1459503854/s9mrx1cdmdt7308il43p.jpg"
lotte.save!

anays = User.new({
  email: "anays@gmail.com",
  password: "password",
  password_confirmation: "password",
  first_name: "Anays",
  last_name: "Jacobs",
  description: "I am Anays and I am 23 years old. I love gardening but I would like to have a buddy to work with. It's always more fun to work together!",
})
anays[:photo] = "v1459507888/glgvj6fp6j1nsfcf9pa1.jpg"
anays.save!

paula = User.new({
  email: "paula@gmail.com",
  password: "password",
  password_confirmation: "password",
  first_name: "Paula",
  last_name: "Hankingson",
  description: "Looking for a garden to grow some tomatoes",
})
paula[:photo] = "v1459500866/c870wyk8u3r4ynlp97xo.jpg"
paula.save!

elisa = User.new({
  email: "elisa@gmail.com",
  password: "password",
  password_confirmation: "password",
  first_name: "Elisa",
  last_name: "Hellinga",
  description: "Hi! I am Elisa, a 25-year old girl originally from NYC. Two months ago I have moved to Amsterdam. I own  a clothing shop and behind my shop there is a garden. I don't use this garden at all, so it is kind of a waste land Therefore it would be ideal if someone likes to restore this garden.",
})
elisa[:photo] = "v1459510421/ddcqdomlknfv27alf1vh.jpg"
elisa.save!

jojanneke = User.new({
  email: "jojanneke@gmail.com",
  password: "password",
  password_confirmation: "password",
  first_name: "Jojanneke",
  last_name: "Tamis",
  description: "Looking for a garden to grow some tomatoes",
})
jojanneke[:photo] = "image/upload/v1459498386/fhdyjrmtj8ibceeyzzhn.jpg"
jojanneke.save!

carolien = User.new({
  email: "carolien@gmail.com",
  password: "password",
  password_confirmation: "password",
  first_name: "Carolien",
  last_name: "Jonker",
  description: "Looking for a garden to work in",
})
carolien[:photo] = "image/upload/v1459498387/mob49rxcmr1km8oiuooh.jpg"
carolien.save!

els = User.new({
  email: "els@gmail.com",
  password: "password",
  password_confirmation: "password",
  first_name: "Els",
  last_name: "Hijmans",
  description: "My husband and I like to grow tomatoes. We live in city center of Amsterdam. On occasions we through food parties in our garden. Looking forward to meet like-minded people at Greenthumb.  ",
})
els[:photo] = "v1459505333/qcszq7qkuk1h1f9ymbpq.jpg"
els.save!

rianne = User.new({
  email: "rianne@gmail.com",
  password: "password",
  password_confirmation: "password",
  first_name: "Rianne",
  last_name: "Rijker",
  description: "Hi, I am Rianne and I'm looking for a garden to grow my own vegetables in. ",
})
rianne[:photo] = "v1459500185/xu8bzyahxnbglb97q7a2.jpg"
rianne.save!

marga = User.new({
  email: "marga@gmail.com",
  password: "password",
  password_confirmation: "password",
  first_name: "Marga",
  last_name: "Smit",
  description: "Hi, I have a big garden at the east side of the city. Last summer I got injured in my knee and cannot work that much in my garden anymore. I am looking for enthusiastic person in my neighborhood, who would like to reorganize my garden. I am open for suggestions. I like flowers, especially roses. Looking forward to meet people.  ",
})
marga[:photo] = "v1459502501/lxef0pcmmbdvpuomiuht.jpg"
marga.save!

cecile = User.new({
  email: "cecile@gmail.com",
  password: "password",
  password_confirmation: "password",
  first_name: "Cecile",
  last_name: "Venezia",
  description: "Looking for a garden to plant some ginkgo",
})
cecile[:photo] = "v1459498381/ynjfkpduk92nucdzcyyf.jpg"
cecile.save!

anne = User.new({
  email: "anne@gmail.com",
  password: "password",
  password_confirmation: "password",
  first_name: "Anne",
  last_name: "Smith",
  description: "Hi, I am Anne, 35 years. I love gardening, so I would love to share that passion with people who would like to work in the extra space in my garden I have left.",
})
anne[:photo] = "v1459506319/dadi5yd4fe23b0c6zogr.jpg"
anne.save!

paul = User.new({
  email: "freek@gmail.com",
  password: "password",
  password_confirmation: "password",
  first_name: "Paul",
  last_name: "Van der Waard",
  description: "Hey, I am Paul, 40 years old and I am living in Amsterdam. I am working at the municipality of Amsterdam. ",
})
paul[:photo] = "v1459504602/w3slqjlf9l3lmx6jdyyj.jpg"
paul.save!

vera = User.new({
  email: "vera@gmail.com",
  password: "password",
  password_confirmation: "password",
  first_name: "Vera",
  last_name: "Klerx",
  description: "Looking for a garden to grow some tomatoes",
})
vera[:photo] = "v1459500232/nweutpxhvwvnv4gxb7p6.jpg"
vera.save!

##################################################

puts "creating gardens..."

sophia_garden = Garden.new({
  description: "I have a very big garden (about 40 square meter) with lots of space I don't use. I would be very happy to welcome someone who could take care of my garden. The garden is perfect for growing vegetables or flowers.",
  address: "Singel 550",
  available: true,
  owner: sophia,
  latitude: 52.3666473,
  longitude: 4.8929252,
  title: "Beautiful garden facing south",
  city: "Amsterdam"
})
sophia_garden[:photo] = "image/upload/v1459507189/xjgvghjdk5mzkkswi0rz.jpg"
sophia_garden[:photo2] = "image/upload/v1459507191/hl4pn6z42ddezzd4we93.jpg"
sophia_garden[:photo3] = "v1459499980/dn4ccypfttyeffwnov6s.jpg"
sophia_garden.save!

anne_garden = Garden.new({
  description: "We have small garden at the city center that we would like to share. There is space to grow your own vegetables.  We have a garden house where you can leave some of your garden tools. That is a public access to the garden, so it is easy to walk in whenever you have time. ",
  address: "Prinsgracht 600",
  available: true,
  owner: anne,
  latitude: 52.3622817,
  longitude: 4.8892155,
  title: "Beautiful garden",
  city: "Amsterdam"
})
anne_garden[:photo] = "image/upload/v1459507088/abvn4jkoxwypp9mdllzl.jpg"
anne_garden[:photo2] = "v1459506762/nvfmtjqad5qadhwrthlz.jpg"
anne_garden[:photo3] = "image/upload/v1459507090/dtgypltzd5h1buyc4wuh.jpg"
anne_garden.save!

els_garden = Garden.new({
  description: "My husband and I love growing tomatoes. Due to our frequent holidays we are looking for someone who would like to help us out in the garden. When harvest season is coming we are thinking of hosting a tomato-party for the neighborhood. ",
  address: "Kinkerstraat 3",
  available: true,
  owner: els,
  latitude: 52.3682537,
  longitude: 4.8759008,
  title: "Tomato lovers",
  city: "Amsterdam"
})
els_garden[:photo] = "image/upload/v1459506000/qf00kcqlrznhxvhxluk5.jpg"
els_garden[:photo2] = "image/upload/v1459506001/lai4lirqjpqtjj75hbdc.jpg"
els_garden[:photo3] = "v1459505215/v4ktvcnr6ml0yz8ae4vh.jpg"
els_garden.save!

anays_garden = Garden.new({
  description: "I have some extra space in my garden. I would be glad to welcome some greenkeepers in my garden! There is a lot of space to grow veggies and herbs. ",
  address: "Rozengracht 286",
  available: true,
  owner: anays,
  latitude: 52.3718782,
  longitude: 4.8741396,
  title: "Sunny garden",
  city: "Amsterdam"
})
anays_garden[:photo] = "image/upload/v1459507847/mapwsvif1mxc2nfbux4f.jpg"
anays_garden[:photo2] = "image/upload/v1459507848/oceureeckxo8noy73ya9.jpg"
anays_garden[:photo3] = nil
anays_garden.save!

david_garden = Garden.new({
  description: "Two years ago I started a project in my neighborhood. Each Saturday me and a few neighbors work together at our own allotment. We all have our own trays in which we grow veggies. If you want to join, feel free! ",
  address: "Herengracht 435",
  available: true,
  owner: david,
  latitude: 52.3671425,
  longitude: 4.8884559,
  title: "Community garden",
  city: "Amsterdam"
})
david_garden[:photo] = "image/upload/v1459502386/iiban7baaa5kqadzxzam.jpg"
david_garden[:photo2] = "image/upload/v1459502388/rtpjohbncfbelsmtfx1y.jpg"
david_garden[:photo3] = "image/upload/v1459502389/aksygx5fa2s5ehxwsj9r.jpg"
david_garden.save!

marga_garden = Garden.new({
  description: "My garden is 100 square meter. We have a big lawn, so about 20 square meter is available for gardening. We would like to see more flowers in the garden. Maybe we can also grow some apples and pears as there is space for trees. We welcome someone who would like to work for a longer period in our  garden. ",
  address: "Weesperstraat 100",
  available: true,
  owner: marga,
  latitude: 52.3649014,
  longitude: 4.9054536,
  title: "Flowers every where",
  city: "Amsterdam"
})
marga_garden[:photo] = "v1459503018/in4a14cdbxqwv8ezm4hw.jpg"
marga_garden[:photo2] = "v1459503297/gwtyp5bs5vduffwadfqn.jpg"
marga_garden[:photo3] = "v1459503266/uiyskmozqp8tpbrvq7ud.jpg"
marga_garden.save!

elisa_garden = Garden.new({
  description: "I own a clothing shop and behind my shop there is a garden. I don't use this garden at all, so it is kind of a waste land. Therefore it would be ideal if someone likes to restore this garden.",
  address: "Westerstraat 7",
  available: true,
  owner: elisa,
  latitude: 52.3787473,
  longitude: 4.8861688,
  title: "Ready for a challenge?",
  city: "Amsterdam"
})
elisa_garden[:photo] = "image/upload/v1459507557/dst4mi57twtqq6tvl2yt.jpg"
elisa_garden[:photo2] = "image/upload/v1459507559/kqcxlgsk3dhvrhi2xnbb.jpg"
elisa_garden[:photo3] = nil
elisa_garden.save!

cecile_garden = Garden.new({
  description: "My garden is very big (about 80 square meter) which I don't use a lot. I would be very happy to welcome someone who could help me taking care of my garden. ",
  address: "Bethaniendwarsstraat 17",
  available: true,
  owner: cecile,
  latitude: 52.3712709,
  longitude: 4.8978133,
  title: "Huge garden with lots of green",
  city: "Amsterdam"
})
cecile_garden[:photo] = "image/upload/v1459503636/kkqpl3e4fgbsph9lst3g.jpg"
cecile_garden[:photo2] = "image/upload/v1459503638/sod53dhntfsyl0qb00w8.jpg"
cecile_garden[:photo3] = "image/upload/v1459503640/a6dqwfpsrshjhec8msp5.jpg"
cecile_garden.save!

paul_garden = Garden.new({
  description: "Would you like to grow flowers? You are very welcome to come work in my garden! It is fairly big (around 50 square meter). Hope to see you soon!",
  address: "Herengracht 200",
  available: true,
  owner: paul,
  latitude: 52.3731132,
  longitude: 4.8868695,
  title: "Garden in center of Amsterdam",
  city: "Amsterdam"
})
paul_garden[:photo] = "image/upload/v1459504899/dqlqdvhdsevndpgxvsbt.jpg"
paul_garden[:photo2] = "image/upload/v1459504851/jrkm32zqx4ttcrdnimyd.jpg"
paul_garden[:photo3] = "image/upload/v1459504852/zrtyggyuhdnwcm6wzqyj.jpg"
paul_garden.save!

lotte_garden = Garden.new({
  description: "I have a big garden which I don't use a lot. If you interested in working in my garden, send me a message!",
  address: "Rokin 1",
  available: true,
  owner: lotte,
  latitude: 52.3724829,
  longitude: 4.893247,
  title: "Sunny garden",
  city: "Amsterda
m"})
lotte_garden[:photo] = "image/upload/v1459504038/axtrbx4bppx1npo9v6sl.jpg"
lotte_garden[:photo2] = "image/upload/v1459504039/dytjlbrlsdjuuyfoi9r6.jpg"
lotte_garden[:photo3] = nil
lotte_garden.save!

##################################################

puts "creating allotments..."

vera_allotment = Allotment.create!({
  start_day: "2016-04-30",
  request_status: "accepted",
  message: "Hi, I would like to work in your garden",
  garden: david_garden,
  user: vera,
  end_day: "2016-08-30"
})

rianne_allotment = Allotment.create!({
  start_day:  "2016-04-30",
  request_status: "accepted",
  message: "Hi, I would like to work in your garden",
  garden: david_garden,
  user: rianne,
  end_day:  "2016-08-30"
})

paula_allotment = Allotment.create!({
  start_day: "2016-04-10",
  request_status: "accepted",
  message: "Hey, you have a really nice garden in which I would like to do some urban gardening.",
  garden: sophia_garden,
  user: paula,
  end_day: "2016-07-01"
})

rianne_allotment_2 = Allotment.create!({
  start_day: "2016-03-01",
  request_status: "accepted",
  message: "Hi, can I check out your garden?",
  garden: sophia_garden,
  user: rianne,
  end_day: "2016-07-01"
})

##################################################

puts "creating garden reviews..."

GardenReview.create!({
  description: "I really liked David and his garden. He lent me a nice sunny spot in the back where I could grow fresh tomatoes and cucumbers. I even invited him over for dinner to taste the vegetables I grew in his garden. ",
  stars: 5,
  user: vera,
  allotment: vera_allotment,
})

GardenReview.create!({
  description: "David is a very friendly guy and his garden is very sunny and spacious. David even borrowed me his garden tools when I forgot them. I’ve been gardening there for two months and I would definitely like to stay longer to grow more fresh vegetables. ",
  stars: 4,
  user: rianne,
  allotment: rianne_allotment,
})

GardenReview.create!({
  description: "I’m working in Sophia’s garden for a while now, it’s a nice garden and also a nice host! We share an interest in gardening (but also in yoga and dogs) and I learned a lot from her about different seeds and what to plant in the different times of the year.",
  stars: 5,
  user: paula,
  allotment: paula_allotment,
})

GardenReview.create!({
  description: "I worked in this garden only for a short while. It is really nice and big, but I left to work in a garden closer at my home, so I can check up on my veggies more often. Sophia is a really nice host and she was always offering me a nice cup of tea. \r\n",
  stars: 4,
  user: rianne,
  allotment: rianne_allotment_2
})

##################################################

puts "DONE!"
