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

  {name:"Holocaust Museum", category: "activities", img_url: "https://www.ushmm.org/m/img/N02358-1000x496.jpg",  address: "100 Raoul Wallenberg Pl SW, Washington, DC 20024", phone_number: "(555) 555-555", website_url: "https://www.ushmm.org/", location_id: 1},
  {name:"Founding Farmers", category: "restaurant", img_url: "https://bakingbeardy.files.wordpress.com/2015/02/founding-farmers.jpg", address: "1924 Pennsylvania Ave NW, Washington, DC 20006", phone_number: "(202) 822-8783", website_url: "http://www.wearefoundingfarmers.com/", location_id: 1},
  {name:"Kennedy Center", category: "entertainment", img_url: "https://drpence.files.wordpress.com/2013/07/img_4971.jpg", address: "2700 F St NW, Washington, DC 20566", phone_number: "(202) 467-4600", website_url: "http://www.kennedy-center.org/", location_id: 1},
  {name:"Roaring Fork", category: "restaurant", img_url: "https://s3-media2.fl.yelpcdn.com/bphoto/55eCZpCcKCEhSTmtcWaKeg/348s.jpg", address: "701 congress Ave.", phone_number: "(512) 583-0000", description: "Wood-fired steaks & slow-roasted pork, plus cocktails & dessert in the InterContinental Hotel.", website_url: "http://roaringfork.com/", map_url: "https://www.google.com/maps/place/Roaring+Fork/@30.2690097,-97.7443015,15.94z/data=!4m8!1m2!2m1!1sRoaring+Fork!3m4!1s0x0:0xce6e982ebf5ebae2!8m2!3d30.2690543!4d-97.7419871?hl=en", location_id: 4},
  {name: "Noble Sandwich Co.", category: "Dining", img_url: "https://0f08db061e3691241cf2-ed2ff79d8db6d3c211cac596915c9d4f.ssl.cf2.rackcdn.com/add3cf418ff54a63a7749206e78fb94b.png", address: "12223 Ranch Road 620 N Ste 105, Austin, TX 78750", phone_number: "(512) 382-6248", description: "A farm-to-table slant applies to big breakfast & lunch in casual, counter-service digs with a patio.", website_url: "http://noblesandwiches.com/", map_url: "https://www.google.com/maps/place/Noble+Sandwich+Co./@30.3190469,-97.7410031,17z/data=!3m1!4b1!4m5!3m4!1s0x8644ca610046a8d9:0x4c4b4811639b364d!8m2!3d30.3190469!4d-97.7388144?hl=en", location_id: 4},
  {name: "South By Southwest 2017", category: "entertainment", img_url: "https://www.sxsw.com/wp-content/uploads/2016/07/aaron-rogosin-boldstage13-crop-1440x810.jpg", date: "10 - 19 March, 2017", website_url: "https://www.sxsw.com/", phone_number: "(512) 467-7979", address: "Various", location_id: 4},
  {name: "Fenway Park", category: "sports", img_url: "http://mlb.mlb.com/bos/images/ballpark/fenway_480x200.jpg", date: "4-3 March 2017", website_url: "http://boston.redsox.mlb.com/bos/ballpark/", address: "4 Yawkey Way, Boston, MA 02215", location_id: 3},
  {name: "Abe & Louie's", category: "restaurant", img_url: "http://20591-presscdn.pagely.netdna-cdn.com/wp-content/uploads/job-manager-uploads/main_image/2016/05/myeager_6329.jpg", website_url: "http://abeandlouies.com/", phone_number: "(617) 536-6300", address: "793 Boylston Street Boston, MA 02116", location_id: 3},
  {name: "Museum of Fine Arts", category: "activities", img_url: "http://d2118lkw40i39g.cloudfront.net/wp-content/uploads/2016/02/3209643011_8d0e6e57ce_b.jpg", website_url: "http://www.mfa.org/", phone_number: "(617) 267-9300", address: "Avenue of the Arts 465 Huntington Avenue Boston, Massachusetts 02115", location_id: 3},
  {name: "Gramcercy Tavern", category: "restaurant", img_url: "http://www.bentelandbentel.com/~bentelan/images/uploads/cache/images/uploads/project-images/gramercy_08_1500_958.jpg", website_url: "http://www.gramercytavern.com/", phone_number: "(212) 477-0777", address: " 42 East 20th St., between Park Avenue South & Broadway.", location_id: 2},
  {name: "Madison Square Garden", category: "entertainment", img_url: "http://www.nycgo.com/images/venues/98/madisonsquaregarden-courtesymsg-b70005-rtw__x_large.jpg", website_url: "http://www.thegarden.com/", phone_number: "(212) 465-6741", address: "4 Pennsylvania Plaza, New York, NY 10001", location_id: 2},
  {name: "9/11 memorial", category: "activities", img_url: "http://www.nycgo.com/images/venues/191/9-11-memorial-03-marley-white__x_large.jpg", website_url: "https://www.911memorial.org/", phone_number: "(212) 312-8800", address: "180 Greenwich Street New York, NY 1000", location_id: 2},
  {name: "Quince", category: "restaurant", img_url: "http://cdn.bgr.com/2016/12/quince-restaurant.jpg?quality=98&strip=all", website_url: "http://quincerestaurant.com/", phone_number: "(415) 775-8500", address: " 470 PACIFIC AVE, SAN FRANCISCO, CA", location_id: 5},
  {name: "Asian Art Museum", category: "activities", img_url: "http://www.placesforkids.com/uploads/place_submitted_photos/aasf11.jpg", website_url: "http://www.asianart.org/", phone_number: "(415) 581-3500", address: "200 Larkin St San Francisco, CA 94102", location_id: 5},
  {name: "Golden Gate Bridge", category: "entertainment", img_url:"http://cdn.history.com/sites/2/2015/05/hith-golden-gate-144833144-E.jpeg", website_url: "http://www.goldengatebridge.org/", phone_number: "(415) 486-8655", address: "Presidio Station, San Francisco, CA 94129-0601", location_id: 5},
  {name: "Art institute Chicago", category: "activities", img_url: "http://www.artic.edu/sites/default/files/styles/slideshow_scale/public/AIC%20Facade,%20North%20View.jpg?itok=brHq8j-6", website_url: "http://www.artic.edu/visit?campaign=chicago%20art%20museum&gclid=COaEp5jk2NICFQQz0wodF9cC7Q", phone_number: "(312) 443-3600", address: " 111 South Michigan Avenue", location_id: 6},
  {name: "Wrigley Field", category: "sports", date: "4-3 March 2017", img_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/2/29/Wrigley_Field_marquee_grandstand_exterior_IMG_2339.jpg/220px-Wrigley_Field_marquee_grandstand_exterior_IMG_2339.jpg", website_url: "http://chicago.cubs.mlb.com/chc/ballpark/", phone_number: "(773) 404-2827", address: "1060 W Addison St, Chicago, IL 60613", location_id: 6},
  {name: "Tanta Chicago", category: "restaurant", img_url: "https://static1.squarespace.com/static/5690797269a91a37897e9aa9/t/569c41d576d99c4f391b0dd0/1453081048590/Tanta_002.jpg?format=2500w", website_url: "https://www.tantachicago.com/", phone_number: "(312) 222-9700", address: "118 W Grand Ave, Chicago, IL 60654", location_id: 6},
])

photos = Photo.create([
  {comment: "Really feels like I am at a farm", title: "Awesome atmosphere", event_id: 2, img_url: "https://cdn0.vox-cdn.com/thumbor/e6t9abocouZbB36URwXdTdDnoVs=/0x600/cdn0.vox-cdn.com/uploads/chorus_asset/file/5604703/6501329909_1de4e39440_o.0.jpg"},
  {comment: "We had a packed house!", title: "Busy night", event_id: 2, img_url: "http://www.wearefoundingfarmers.com/wp-content/uploads/bfi_thumb/moco_location_large-307xn2mx8uc8pwp2gmhse8.jpg"},
  {comment: "This was amazing", title: "Chicken and Waffles", event_id: 2, img_url: "https://s3-media1.fl.yelpcdn.com/bphoto/sjvaVgZIecSozah5Lzba1Q/ls.jpg"},
  {comment: "Morning prep in action", title: "Opening up at RF", event_id: 3, img_url: "http://www.kraemereng.com/Kraemer/pageimages/RF%20Austin%204.JPG"}
  ])
