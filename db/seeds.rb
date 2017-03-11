# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Location.destroy_all



locations = Location.create([
  {city: "Washington", state: "DC", country: "USA", img_url: ""},
  {city: "New York City", state: "NY", country: "USA", img_url: ""},
  {city: "Boston", state: "MA", country: "USA", img_url: ""}
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
