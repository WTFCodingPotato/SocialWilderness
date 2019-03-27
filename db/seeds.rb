# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Destination.destroy_all
Review.destroy_all
Trip.destroy_all

User.create(name: "Tom Hanks", age: 65, description: "Great actor", image_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/6/66/Tom_Hanks_2014.jpg/220px-Tom_Hanks_2014.jpg", email: "tomhanks@somemail.com", password: "big")
User.create(name: "Leo", age: 45, description: "Another great actor", image_url: "https://m.media-amazon.com/images/M/MV5BMjI0MTg3MzI0M15BMl5BanBnXkFtZTcwMzQyODU2Mw@@._V1_UY317_CR10,0,214,317_AL_.jpg", email: "leo@somemail.com", password: "leo")

Destination.create(name: "Grand Canyon Park", location_url: "https://www.visitarizona.com/cities/northern/grand-canyon-village", booking_url: "https://www.wildwestrvresort.com/", description: "Unique combinations of geologic color and erosional forms decorate a canyon that is 277 river miles (446km) long, up to 18 miles (29km) wide, and a mile (1.6km) deep. Grand Canyon overwhelms our senses through its immense size. South Rim is open all year.  North Rim is closed for the winter.")
Destination.create(name: "Red Rocks", location_url: "https://www.redrocksonline.com/", booking_url: "https://www.redrocksonline.com/plan-your-visit/accommodations", description: "Red Rocks is a geologically formed, open-air amphitheater that is not duplicated anywhere in the world. With Mother Nature as the architect, the design of the Amphitheatre consists of two, three hundred-foot monoliths (Ship Rock and Creation Rock) that provide acoustic perfection for any performance.")
Destination.create(name: "Mount Rainier", location_url: "https://www.nps.gov/mora/index.htm", booking_url: "https://www.nps.gov/mora/planyourvisit/permitsandreservations.htm", description: "Ascending to 14,410 feet above sea level, Mount Rainier stands as an icon in the Washington landscape. An active volcano, Mount Rainier is the most glaciated peak in the contiguous U.S.A., spawning five major rivers. Subalpine wildflower meadows ring the icy volcano while ancient forest cloaks Mount Rainier’s lower slopes. Wildlife abounds in the park’s ecosystems. A lifetime of discovery awaits.")
Destination.create(name: "Appalachian Trial", location_url: "http://www.appalachiantrail.org/", booking_url: "http://www.appalachiantrail.org/home/explore-the-trail/trail-updates", description: "The Appalachian National Scenic Trail, generally known as the Appalachian Trail or simply the A.T., is a marked hiking trail in the Eastern United States extending between Springer Mountain in Georgia and Mount Katahdin in Maine.[1] The trail is about 2,200 miles (3,500 km) long, though the exact length changes over time as parts are modified or rerouted.[a] The Appalachian Trail Conservancy describes the Appalachian Trail as the longest hiking-only trail in the world.[2][3] More than 2 million people are said to take a hike on part of the trail at least once each year.")



Review.create(title: "Cool Concert", content: "I went on this really awesome trip and it was super sick and lovely and woot lots more details.", destination_id: 1, user_id: 1, rating: 4)
Review.create(title: "Cooler Concert", content: "I went on this really REALLY awesome trip and it was super sick and lovely and woot lots more details.", destination_id: 1, user_id: 1, rating: 3)
Review.create(title: "Best Concert", content: "I went on this really awesome trip and it was super sick and lovely and woot lots more details.", destination_id: 1, user_id: 2, rating: 5)
Review.create(title: "Better Concert", content: "I went on this really REALLY awesome trip and it was super sick and lovely and woot lots more details.", destination_id: 1, user_id: 2, rating: 1)
Review.create(title: "Hike 1", content: "For President Trump, it may have been the best day of his tenure so far.", destination_id: 2, user_id: 1, rating: 4)
Review.create(title: "Hike 2", content: "The darkest, most ominous cloud hanging over his presidency was all but lifted on Sunday with the release of the special counsel’s conclusions.", destination_id: 2, user_id: 1, rating: 4)

Trip.create(title: "Wanna hike there again", user_id: 1, destination_id: 1)
Trip.create(title: "Hikey hike", user_id: 1, destination_id: 1)
Trip.create(title: "Wanna hike?", user_id: 2, destination_id: 1)
Trip.create(title: "Hikeee", user_id: 2, destination_id: 2)
