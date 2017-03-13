# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Location.destroy_all
Event.destroy_all
Photo.destroy_all


locations = Location.create([
  {city: "Washington", state: "DC", country: "USA", img_url: "/assets/images/Washington_DC.jpeg"},
  {city: "New York City", state: "NY", country: "USA", img_url: ""},
  {city: "Boston", state: "MA", country: "USA", img_url: ""},
  {city: "Austin", state: "TX", country: "USA", img_url: "/assets/images/Austin_TX.jpeg"},
  {city: "San Francisco", state: "CA", country: "USA", img_url: "/assets/images/SanFrancisco.jpeg"}
  ])

events = Event.create([
  {name:"Holocaust Museum", category: "museum", location_id: 1},
  {name:"Founding Farmers", category: "restaurant", location_id: 1},
  {name:"Roaring Fork", category: "restaurant", location_id: 2},
  {name: "Noble Sandwich Co.", category: "Dining", address: "12223 Ranch Road 620 N Ste 105, Austin, TX 78750", phone_number: "(512) 382-6248", website_url: "http://noblesandwiches.com/", location_id: 4},
  {name: "South By Southwest 2017", category: "Entertainment", date: "10 - 19 March, 2017", website_url: "https://www.sxsw.com/", phone_number: "(512) 467-7979", address: "Various", location_id: 4}
  ])

# austin = Location.create(name:"Austin")
# washington_d.c. = Location.create(name:"Washington D.C.")
# san_francisco = Location.create(name: "San Francisco")
#
#
# holocaust = Event.create(name:"Holocaust Museum", category: "museum", location: washington_d.c. )
# smashmouth = Event.create(name:"Smash Mouth", category: "concert", location: austin)
# roaringfork = Event.create(name:"Roaring Fork", category: "restaurant", location: austin)
# foundingfarmers = Event.create(name:"Founding Farmers", category: "restaurant", location: washington_d.c.)
# beauty_and_the_beast = Event.create(name:"Beauty and the Beast", category: "movie", location: san_francisco)
# dada_life = Event.create(name"Data Life", category:"concert", location: san_francisco)
#
#
# Photo.create(title:"")
