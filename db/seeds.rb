# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Location.destroy_all
Event.destroy_all


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
  {name:"Roaring Fork", category: "restaurant", location_id: 4},
  {name: "Noble Sandwich Co.", category: "Dining", address: "12223 Ranch Road 620 N Ste 105, Austin, TX 78750", phone_number: "(512) 382-6248", website_url: "http://noblesandwiches.com/", location_id: 4},
  {name: "South By Southwest 2017", category: "Entertainment", date: "10 - 19 March, 2017", website_url: "https://www.sxsw.com/", phone_number: "(512) 467-7979", address: "Various", location_id: 4}
  ])

photos = Photo.create([
  {comment: "Really feels like I am at a farm", title: "Awesome atmosphere", event_id: 2, img_url: "https://cdn0.vox-cdn.com/thumbor/e6t9abocouZbB36URwXdTdDnoVs=/0x600/cdn0.vox-cdn.com/uploads/chorus_asset/file/5604703/6501329909_1de4e39440_o.0.jpg"},
  {comment: "We had a packed house!", title: "Busy night", event_id: 2, img_url: "http://www.wearefoundingfarmers.com/wp-content/uploads/bfi_thumb/moco_location_large-307xn2mx8uc8pwp2gmhse8.jpg"},
  {comment: "This was amazing", title: "Chicken and Waffles", event_id: 2, img_url: "https://s3-media1.fl.yelpcdn.com/bphoto/sjvaVgZIecSozah5Lzba1Q/ls.jpg"},
  {comment: "Morning prep in action", title: "Opening up at RF", event_id: 3, img_url: "http://www.kraemereng.com/Kraemer/pageimages/RF%20Austin%204.JPG"}
  ])
