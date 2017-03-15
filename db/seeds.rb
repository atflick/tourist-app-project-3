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
  {city: "Washington", state: "DC", country: "USA", img_url: "https://cbsbaltimore.files.wordpress.com/2012/11/washington-d-c-skyline.jpg"},
  {city: "New York City", state: "NY", country: "USA", img_url: "http://www.cubebreaker.com/wp-content/uploads/2014/04/skyline-01-new-york-city.jpg"},
  {city: "Boston", state: "MA", country: "USA", img_url: "http://cdn.luxuo.com/wp-content/uploads/2014/12/Boston-Skyline.jpg"},
  {city: "Austin", state: "TX", country: "USA", img_url: "http://www.24thstreetinvestments.com/wp-content/uploads/2016/05/Austin-Skyline.jpg"},
  {city: "San Francisco", state: "CA", country: "USA", img_url: "http://ww2.hdnux.com/photos/31/22/51/6629969/9/rawImage.jpg"},
  {city: "Chicago", state: "IL", country: "USA", img_url: "https://media.atre.yardi.com/2/50095/images/Victory-Tower-Chicago-Skyline-rendering.jpg"}
  ])

events = Event.create([
  {name:"Holocaust Museum", category: "museum", address: "100 Raoul Wallenberg Pl SW, Washington, DC 20024", phone_number: "(555) 555-555", website_url: "https://www.ushmm.org/", location_id: 1},
  {name:"Founding Farmers", category: "restaurant", address: "1924 Pennsylvania Ave NW, Washington, DC 20006", phone_number: "(202) 822-8783", website_url: "http://www.wearefoundingfarmers.com/", location_id: 1},
  {name:"Roaring Fork", category: "restaurant", address: "701 congress Ave.", phone_number: "(512) 583-0000", website_url: "http://roaringfork.com/", location_id: 4},
  {name: "Noble Sandwich Co.", category: "Dining", address: "12223 Ranch Road 620 N Ste 105, Austin, TX 78750", phone_number: "(512) 382-6248", website_url: "http://noblesandwiches.com/", location_id: 4},
  {name: "South By Southwest 2017", category: "Entertainment", date: "10 - 19 March, 2017", website_url: "https://www.sxsw.com/", phone_number: "(512) 467-7979", address: "Various", location_id: 4}
  ])

photos = Photo.create([
  {comment: "Really feels like I am at a farm", title: "Awesome atmosphere", event_id: 2, img_url: "https://cdn0.vox-cdn.com/thumbor/e6t9abocouZbB36URwXdTdDnoVs=/0x600/cdn0.vox-cdn.com/uploads/chorus_asset/file/5604703/6501329909_1de4e39440_o.0.jpg"},
  {comment: "We had a packed house!", title: "Busy night", event_id: 2, img_url: "http://www.wearefoundingfarmers.com/wp-content/uploads/bfi_thumb/moco_location_large-307xn2mx8uc8pwp2gmhse8.jpg"},
  {comment: "This was amazing", title: "Chicken and Waffles", event_id: 2, img_url: "https://s3-media1.fl.yelpcdn.com/bphoto/sjvaVgZIecSozah5Lzba1Q/ls.jpg"},
  {comment: "Morning prep in action", title: "Opening up at RF", event_id: 3, img_url: "http://www.kraemereng.com/Kraemer/pageimages/RF%20Austin%204.JPG"}
  ])
