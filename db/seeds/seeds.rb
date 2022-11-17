ApplicationRecord.transaction do 
    puts "Destroying tables..."
  
    Listing.destroy_all
    User.destroy_all
  
    puts "Resetting primary keys..."
    ApplicationRecord.connection.reset_pk_sequence!('listings')
    
    puts "Creating users..."
  
  
  User.create!(
  first_name: "tester",
  last_name: "test",
  email: 'demo@user.io', 
  password: 'password'
  )
  
  User.create!(
  first_name: "tester",
  last_name: "test",
  email: 'test@gmail.com',
  password: "password"
  )
  
  
  u1 =    User.create!({
      first_name: Faker::Name.first_name,
      last_name: Faker::Name.last_name,
      email: Faker::Internet.unique.email,
      password: 'password'
    }) 

u1 =    User.create!({
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.unique.email,
    password: 'password'
  }) 

l1 = Listing.create({
    "price": 363,
    "num_bedrooms": 3,
    "num_baths": 2,
    "city": "Miami",
    "state": " Florida",
    "country": " United States",
    "ammenities": [
        "Kitchen",
        "Wifi",
        "Dedicated workspace",
        "Free parking on premises",
        "Private pool",
        "Pets allowed",
        "75\" HDTV with Amazon Prime Video, Apple TV, Disney+, HBO Max, Netflix",
        "Free washer \u2013 In unit",
        "Free dryer \u2013 In unit",
        "Security cameras on property"
    ],
    "listing_type": "apartment",
    "description": "This gorgeous, cozy, and modern Miami home is what dreams are made of. With 3 bedrooms 2 bathrooms, this is the perfect place to stay during your visit to the Magic City. Within walking distance to the best local dining and drinking in the city. An outdoor oasis filled with tropical greenery, over 20 fruits trees for you to eat right from the tree, and a gorgeous pergola and private pool - there\u2019s no better place to stay. 5 minutes to Miami Beach and 10 minutes to the airport. @mimobungalow\n\n\nThe driveway comfortably fits 4 cars.",
    "main_title": "Spacious Room in the heart of North Beach",
    "sub_title": "Entire villa hosted by Luisa & Justin",
    "space_type": "3 bedrooms",
    "cleaning_fee": 544.5,
    "service_fee": 272.25,
    "max_guests": 6,
    "user_id":u1.id
})


l1_image_1 = File.open("#{File.dirname(__FILE__)}/MyBNB/db/seeds/data/1/image_0.jpg")
l1_image_2 = File.open("#{File.dirname(__FILE__)}/MyBNB/db/seeds/data/1/image_1.jpg")
l1_image_3 = File.open("#{File.dirname(__FILE__)}/MyBNB/db/seeds/data/1/image_2.jpg")
l1_image_4 = File.open("#{File.dirname(__FILE__)}/MyBNB/db/seeds/data/1/image_3.jpg")
l1_image_5 = File.open("#{File.dirname(__FILE__)}/MyBNB/db/seeds/data/1/image_4.jpg")

l1.images.attach(io: l1_image_1,filename: "image.jpg")
l1.images.attach(io: l1_image_2,filename: "image.jpg")
l1.images.attach(io: l1_image_3,filename: "image.jpg")
l1.images.attach(io: l1_image_4,filename: "image.jpg")
l1.images.attach(io: l1_image_5,filename: "image.jpg")
l1.save!

u1 =    User.create!({
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.unique.email,
    password: 'password'
  }) 

l1 = Listing.create({
    "price": 274,
    "num_bedrooms": 3,
    "num_baths": 2,
    "city": "Miami",
    "state": " Florida",
    "country": " United States",
    "ammenities": [
      "Kitchen",
      "Wifi",
      "Dedicated workspace",
      "Free parking on premises",
      "Private pool",
      "Pets allowed",
      "75\" HDTV with Amazon Prime Video, Apple TV, Disney+, HBO Max, Netflix",
      "Free washer \u2013 In unit",
      "Free dryer \u2013 In unit",
      "Security cameras on property"
  ],
    "listing_type": "apartment",
    "description": "Casa Canal is a relaxing oasis surrounded by tropical plants and a Beautiful Canal.  The canal is home to manatees, squirrels, bright green Iguanas, and at times wild green Parakeets in the tree canopy, You can enjoy all this from your private hot tub.\n\nSpend a quiet time fishing under the gumbo limbo tree while enjoying the tropical breeze. The backyard faces the Canal to the east and in the morning you can often enjoy a beautiful sunrise and sometimes in the evening an impressive full moon.\n\n\nCasa Canal, from the moment you walk in, you get a feeling of spacious, relaxing, non-cluttered space yet a place that makes you feel comfortable right away. The house is an open plan design with water views visible from all rooms. It has 3 large bedrooms, 2 bathrooms, and a large kitchen with a bar, 55\u201d HDTV, and plenty of seating. The kitchen is fully equipped, and there is a separate laundry room and a relaxing outdoor patio, accessible from the dining room All beds have 100% cotton sheets and guests are provided 100% premium quality cotton baths and hand towels.",
    "main_title": "Mini cottage near San Francisco & SF airport",
    "sub_title": "Entire villa hosted by Adam",
    "space_type": "3 bedrooms",
    "cleaning_fee": 411.0,
    "service_fee": 205.5,
    "max_guests":7,
    "user_id":u1.id
})

l1_image_1 = File.open("#{File.dirname(__FILE__)}/MyBNB/db/seeds/data/1/image_0.jpg")
l1_image_2 = File.open("#{File.dirname(__FILE__)}/MyBNB/db/seeds/data/1/image_1.jpg")
l1_image_3 = File.open("#{File.dirname(__FILE__)}/MyBNB/db/seeds/data/1/image_2.jpg")
l1_image_4 = File.open("#{File.dirname(__FILE__)}/MyBNB/db/seeds/data/1/image_3.jpg")
l1_image_5 = File.open("#{File.dirname(__FILE__)}/MyBNB/db/seeds/data/1/image_4.jpg")

l1.images.attach(io: l1_image_1,filename: "image.jpg")
l1.images.attach(io: l1_image_2,filename: "image.jpg")
l1.images.attach(io: l1_image_3,filename: "image.jpg")
l1.images.attach(io: l1_image_4,filename: "image.jpg")
l1.images.attach(io: l1_image_5,filename: "image.jpg")
l1.save!

u1 =    User.create!({
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.unique.email,
    password: 'password'
  }) 

l1 =Listing.create({
    "price": 99,
    "num_bedrooms": 1,
    "num_baths": 1,
    "city": "San Francisco",
    "state": " California",
    "country": " United States",
    "ammenities": [
      "Kitchen",
      "Wifi",
      "Dedicated workspace",
      "Free parking on premises",
      "Private pool",
      "Pets allowed",
      "75\" HDTV with Amazon Prime Video, Apple TV, Disney+, HBO Max, Netflix",
      "Free washer \u2013 In unit",
      "Free dryer \u2013 In unit",
      "Security cameras on property"
  ],
    "listing_type": "apartment",
    "description": "The Inn At The Opera has a guest rating of 4.1  out of 5 on Expedia.  Please let me know what dates you are interested in & I will check on the availability with my timeshare company\n\nThis is a hotel room/studio  (~ 200 sq ft) with one queen size bed & is equipped with television, a nightstand with a lamp, a desk or round table with two chairs & a kitchenette. Kitchenette has a microwave oven, coffeemaker, refrigerator & flatware, glassware, and silverware for two.  Max occupancy of 2.\n\n\nYou will check in just like at any hotel. This is a timeshare unit and it's fully transferable so I will be booking the nights under your name.  I will email you the reservation confirmation  document from the timeshare company showing the reservation being under your name.\n\nI have been an owner of Shell Vacations Time Share properties for over 10 years  (The Inn at the Opera Hotel being one property owned by Shell Vacations Club).\n\nCredit card will be required by hotel at time of check-in and held as a deposit for any damages.\n\nFeatures Include:\nComplimentary WiFi Internet access\nConcierge services\nWireless Internet access throughout the hotel\nBusiness services available including faxing, copying, and printing\nInternet kiosk in lobby\n24-hour front desk\nLaundry and dry cleaning service (fee)\nParking is optional at a parking structure around the corner at a cost of $39/night.  The access card that will allow you in and out privileges is purchased directly at the front desk.\nPets not allowed\nMust be at least 21 years of age\n\nTo ensure your safety and the safety of others, the following precautions may be in place at the Inn at the Opera (since covid transmission rates are fluid, conditions may change based on check in date):\n- House cleaning will not come into the room but you can contact the front desk and they can provide you with replacement towels/wash clothes/kleenex/etc (they will leave at your door).\n- Guests MAY be required to wear a mask when checking in and walking in the common areas of the hotel throughout the stay.\n- When arriving at the hotel, staff MAY ask guests several health questions to verify they are not experiencing COVID systems. Any guest with COVID systems will not be allowed to check-in.\n\nAll units have same features and size, but room location, and decor may vary based on which ever unit is available at the time of check-in.\n\nHOUSEKEEPING:  On a daily basis, hotel housekeeping will provide a light cleaning service which consists of making the bed(s), replacing the bath towels and emptying the trash. A full cleaning of the room is provided on the fifth day of the reservation.  Tenants seeking a daily full cleaning service may be added for an additional fee.",
    "main_title": "Walk to the Waterfront from a High-Tech Studio Flat",
    "sub_title": "Entire rental unit hosted by Jim",
    "space_type": "Studio",
    "cleaning_fee": 148.5,
    "service_fee": 74.25,
    "max_guests": 2,
    "user_id":u1.id
})



u1 =    User.create!({
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.unique.email,
    password: 'password'
  }) 
l1 =Listing.create({
    "price": 138,
    "num_bedrooms": 1,
    "num_baths": 1,
    "city": "San Francisco",
    "state": " California",
    "country": " United States",
    "ammenities": [
      "Kitchen",
      "Wifi",
      "Dedicated workspace",
      "Free parking on premises",
      "Private pool",
      "Pets allowed",
      "75\" HDTV with Amazon Prime Video, Apple TV, Disney+, HBO Max, Netflix",
      "Free washer \u2013 In unit",
      "Free dryer \u2013 In unit",
      "Security cameras on property"
  ],
    "listing_type": "apartment",
    "description": "The Dorel is your perfect escape from the hustle and bustle of city life. Newly remodeled in 2019, our partially furnished efficiency units were built with your comfort in mind with the necessities needed to settle into urban life including a private bathroom, full or double Murphy beds, sofa, microwave and mini-fridge. The building features a gourmet community kitchen, an outdoor patio deck, on-site laundry and high-speed Wi-Fi.\n\n\nEnjoy your studio with a private bathroom, full Murphy bed, sofa, smart TV, microwave and mini-fridge.\n\nThe building features a gourmet community kitchen, an outdoor patio deck, on-site laundry and high-speed Wi-Fi. Each door is equipped with Key Fob locks to ensure the safety of our guests.",
    "main_title": "Guitar Room",
    "sub_title": "Room in aparthotel hosted by Dorel SF",
    "space_type": "Studio",
    "cleaning_fee": 207.0,
    "service_fee": 103.5,
    "max_guests":5,
    "user_id":u1.id
})

l1_image_1 = File.open("#{File.dirname(__FILE__)}/MyBNB/db/seeds/data/1/image_0.jpg")
l1_image_2 = File.open("#{File.dirname(__FILE__)}/MyBNB/db/seeds/data/1/image_1.jpg")
l1_image_3 = File.open("#{File.dirname(__FILE__)}/MyBNB/db/seeds/data/1/image_2.jpg")
l1_image_4 = File.open("#{File.dirname(__FILE__)}/MyBNB/db/seeds/data/1/image_3.jpg")
l1_image_5 = File.open("#{File.dirname(__FILE__)}/MyBNB/db/seeds/data/1/image_4.jpg")

l1.images.attach(io: l1_image_1,filename: "image.jpg")
l1.images.attach(io: l1_image_2,filename: "image.jpg")
l1.images.attach(io: l1_image_3,filename: "image.jpg")
l1.images.attach(io: l1_image_4,filename: "image.jpg")
l1.images.attach(io: l1_image_5,filename: "image.jpg")
l1.save!

u1 =    User.create!({
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.unique.email,
    password: 'password'
  }) 
l1 =Listing.create({
    "price": 77,
    "num_bedrooms": 1,
    "num_baths": 1,
    "city": "San Francisco",
    "state": " California",
    "country": " United States",
    "ammenities": [
      "Kitchen",
      "Wifi",
      "Dedicated workspace",
      "Free parking on premises",
      "Private pool",
      "Pets allowed",
      "75\" HDTV with Amazon Prime Video, Apple TV, Disney+, HBO Max, Netflix",
      "Free washer \u2013 In unit",
      "Free dryer \u2013 In unit",
      "Security cameras on property"
  ],
    "listing_type": "apartment",
    "description": "Our cozy bedroom sits in a Victorian home dating back to 1900.  It is centrally located in the Richmond District of San Francisco and retains the original San Franciscan flavor. With a queen bed and a sofa, it comfortably accommodates one person or a couple. \n\nIt's within walking distance to the Golden Gate Park, Lake Park, Presidio, and bus stops that connect you to major attractions the city has to offer.\n\nIt has a beautiful black Yamaha YU-30'upright piano that you can play.\n\n\nIt's strategically and conveniently located in the Inner Richmond District of San Francisco. Only 6 blocks from the Golden Gate Park, two blocks from Presidio Park and Lake Park and 5- minute bus ride (Muni #28) to the Golden Gate Bridge. \n\nThe room is on the second floor and there are about 11 steps up from the street level.  The house has a total of 5 bedrooms, two on the second floor and three on the third floor. Three of us live on the third floor.",
    "main_title": "Spacious Private Room with Ensuite Bathroom",
    "sub_title": "Private room in home hosted by Budi",
    "space_type": "1 bedroom",
    "cleaning_fee": 115.5,
    "service_fee": 57.75,
    "max_guests": 6,
    "user_id":u1.id
})
l1_image_1 = File.open("#{File.dirname(__FILE__)}/MyBNB/db/seeds/data/1/image_0.jpg")
l1_image_2 = File.open("#{File.dirname(__FILE__)}/MyBNB/db/seeds/data/1/image_1.jpg")
l1_image_3 = File.open("#{File.dirname(__FILE__)}/MyBNB/db/seeds/data/1/image_2.jpg")
l1_image_4 = File.open("#{File.dirname(__FILE__)}/MyBNB/db/seeds/data/1/image_3.jpg")
l1_image_5 = File.open("#{File.dirname(__FILE__)}/MyBNB/db/seeds/data/1/image_4.jpg")

l1.images.attach(io: l1_image_1,filename: "image.jpg")
l1.images.attach(io: l1_image_2,filename: "image.jpg")
l1.images.attach(io: l1_image_3,filename: "image.jpg")
l1.images.attach(io: l1_image_4,filename: "image.jpg")
l1.images.attach(io: l1_image_5,filename: "image.jpg")
l1.save!

u1 =    User.create!({
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.unique.email,
    password: 'password'
  }) 


l1 =Listing.create({
    "price": 68,
    "num_bedrooms": 1,
    "num_baths": 1,
    "city": "Daly City",
    "state": " California",
    "country": " United States",
    "listing_type": "apartment",
    "description": "Mini cottage w/ free parking.\n\nThis small cottage is located in our beautiful backyard. It is close to everything. A 15 min drive to downtown San Francisco and SF airport. A 15 min walk to Westlake shopping center and Bart station to San Francisco. The beautiful unit has a private entrance, one bedroom with a queen bed and a private bathroom. \nWe provide Wi-fi, towels, instant coffee, tea, and snack. More amenities for you to use: TV, microwave,  refrigerator, hair dryer & electric kettle.\n\n\nOur beautiful backyard.",
    "main_title": "Luxury Beachfront Space near SF ",
    "sub_title": "Entire cottage hosted by En",
    "space_type": "1 bedroom",
    "cleaning_fee": 102.0,
    "service_fee": 51.0,
    "ammenities": [
      "Kitchen",
      "Wifi",
      "Dedicated workspace",
      "Free parking on premises",
      "Private pool",
      "Pets allowed",
      "75\" HDTV with Amazon Prime Video, Apple TV, Disney+, HBO Max, Netflix",
      "Free washer \u2013 In unit",
      "Free dryer \u2013 In unit",
      "Security cameras on property"
  ],
    "max_guests": 7,
    "user_id":u1.id
})

l1_image_1 = File.open("#{File.dirname(__FILE__)}/MyBNB/db/seeds/data/1/image_0.jpg")
l1_image_2 = File.open("#{File.dirname(__FILE__)}/MyBNB/db/seeds/data/1/image_1.jpg")
l1_image_3 = File.open("#{File.dirname(__FILE__)}/MyBNB/db/seeds/data/1/image_2.jpg")
l1_image_4 = File.open("#{File.dirname(__FILE__)}/MyBNB/db/seeds/data/1/image_3.jpg")
l1_image_5 = File.open("#{File.dirname(__FILE__)}/MyBNB/db/seeds/data/1/image_4.jpg")

l1.images.attach(io: l1_image_1,filename: "image.jpg")
l1.images.attach(io: l1_image_2,filename: "image.jpg")
l1.images.attach(io: l1_image_3,filename: "image.jpg")
l1.images.attach(io: l1_image_4,filename: "image.jpg")
l1.images.attach(io: l1_image_5,filename: "image.jpg")
l1.save!

u1 =    User.create!({
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.unique.email,
    password: 'password'
  }) 

l1 =Listing.create({
    "price": 134,
    "num_bedrooms": 2,
    "num_baths": 1,
    "city": "Miami Beach",
    "state": " Florida",
    "country": " United States",
    "ammenities": [
        "Ocean view",
        "Sea view",
        "Beach access \u2013 Beachfront",
        "Kitchen",
        "Wifi",
        "Dedicated workspace",
        "Free parking on premises",
        "Pets allowed",
        "TV with standard cable",
        "Elevator"
    ],
    "listing_type": "apartment",
    "description": "A modern style and freshly renovated large beachfront studio apartment in Miami Beach with 180 degree ocean views of the crystal clear water and free parking. The apartment features a king size bed, ast and free unlimited 300mb WiFi Internet and a 60inch Samsung LED TV with Netflix and TIVO HD service 500 channels.\n\nWhile we have always had the highest standards of cleanliness, we have now taken it to another level by investing in an Electric ULV Fogger to be used between each guest.\n\n\nWe just got done renovating every single aspect of Pure Miami Beach.  We basically tore it down to the cement walls and floor and then rebuilt it with functionality and design in mind. The result was a crisp all white modern studio that provides everything you need for a beach holiday. \n\nThis unit (along with our others) offers FREE PARKING for one car which is hard to find in Miami Beach.\n\nSome highlights of Pure Miami Beach\n-King Size bed (2mx2m) with brand new linens provided\n-Fresh Bath Towels, Hand Towels and Washcloths provided\n-Beach Towels Provided\n-Beach Chairs, Beach Umbrella and Snorkel gear provided\n-Tennis rackets provided\n-60inch Samsung LED TV with Netflix and TIVO HD service 500 channels.\n-300mb speed WIFI internet Free Private internet (unlimited)\n-Local telephone with free calls to USA and some other countries\n-iPhone speaker/alarm clock (lightning connector)\n-Keurig K-Cup\u00ae coffee system\n-Fold out sofa with linens upon request\n-Basic kitchenette with bar sink, medium size refrigerator, Freezer and Microwave\n-Electric Tea Kettle, Toaster, and blender to make some tropical drinks.\n-Door Combination lock, no keys required\n-All white contemporary design with LED lighting\n-All original artwork by Maru\n-Dyson cordless vacuum for quick cleanup\n-Iron, Iron board and Hairdryer\n-Rainfall Shower\n-Pack n Play Baby Crib, Baby Tub or Toddler Cot Available upon request\n\n\n\nPure Miami Beach would be comfortable for 2 adults.  Potentially, with the fold out sofa, one or two children would be ok so we are listing it for 3 people.",
    "main_title": "Oceanfront Coastal Home w Breathtaking Views",
    "sub_title": "Entire condo hosted by Shane And Maru",
    "space_type": "1 bedroom",
    "cleaning_fee": 201.0,
    "service_fee": 100.5,
    "max_guests": 7,
    "user_id":u1.id
})
l1_image_1 = File.open("#{File.dirname(__FILE__)}/MyBNB/db/seeds/data/1/image_0.jpg")
l1_image_2 = File.open("#{File.dirname(__FILE__)}/MyBNB/db/seeds/data/1/image_1.jpg")
l1_image_3 = File.open("#{File.dirname(__FILE__)}/MyBNB/db/seeds/data/1/image_2.jpg")
l1_image_4 = File.open("#{File.dirname(__FILE__)}/MyBNB/db/seeds/data/1/image_3.jpg")
l1_image_5 = File.open("#{File.dirname(__FILE__)}/MyBNB/db/seeds/data/1/image_4.jpg")

l1.images.attach(io: l1_image_1,filename: "image.jpg")
l1.images.attach(io: l1_image_2,filename: "image.jpg")
l1.images.attach(io: l1_image_3,filename: "image.jpg")
l1.images.attach(io: l1_image_4,filename: "image.jpg")
l1.images.attach(io: l1_image_5,filename: "image.jpg")
l1.save!

u1 =    User.create!({
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.unique.email,
    password: 'password'
  }) 


l1 =Listing.create({
    "price": 295,
    "num_bedrooms": 6,
    "num_baths": 3,
    "city": "Miramar",
    "state": " Florida",
    "country": " United States",
    "ammenities": [
        "Kitchen",
        "Wifi",
        "Dedicated workspace",
        "Free parking on premises",
        "Private outdoor pool - available all year, open 24 hours, heated",
        "65\" HDTV with Amazon Prime Video, Disney+, HBO Max, Netflix, Roku, standard cable",
        "Free washer \u2013 In unit",
        "Free dryer \u2013 In unit",
        "Central air conditioning",
        "Security cameras on property"
    ],
    "listing_type": "apartment",
    "description": "Welcome to our stylish recently remodeled home with a short drive to the beach. Conveniently located for grocery shopping, restaurants, minutes to Hard Rock Stadium and Casino. \nIdeal for families and friends. STRICTLY NO HOUSE PARTIES. \nThe front-of-house driveway can fit up to 4 cars.\n\n\nOur recently remodeled home with an open space concept is perfect for someone looking to enjoy indoor and outdoor living. The open kitchen is merged with a living room that leads to a gorgeous pool with a mounted waterfall fountain, a spacious lounge area with a cozy gazebo, and plenty of chaise lounge chairs. A high fence provides a feeling of seclusion, yet blends in perfectly with the overall flow of the backyard. There is a separate grilling corner for that grilling enthusiast who wants to focus on prepping their perfect steak or fish without being splashed down by someone else's cannonballs into the pool. Interior is made in light colors, using only natural materials. Granite countertops, stainless steel appliances, and all amenities make the kitchen a perfect spot to cook up that dish you've been wanting to try since you started to plan your vacation.  \nThe home features five bedrooms. The master bedroom has a gorgeous newly renovated bathroom with a sunken tub and double vanity. The second master bedroom has a private bath with a stand-up shower, also a convenient adjacent room with a bunk bed and en-suite bathroom.  Two other bedrooms share a spacious bathroom. Perfect for the two best friends or family mem who want to have their own privacy, but don't mind sharing a bathroom.",
    "main_title": "(((:::Ocean View Modern New House | \u6d77\u8fb968\u53f7:::)))",
    "sub_title": "Entire villa hosted by Tim",
    "space_type": "5 bedrooms",
    "cleaning_fee": 442.5,
    "service_fee": 221.25,
    "max_guests": 7,
    "user_id":u1.id
})

l1_image_1 = File.open("#{File.dirname(__FILE__)}/MyBNB/db/seeds/data/1/image_0.jpg")
l1_image_2 = File.open("#{File.dirname(__FILE__)}/MyBNB/db/seeds/data/1/image_1.jpg")
l1_image_3 = File.open("#{File.dirname(__FILE__)}/MyBNB/db/seeds/data/1/image_2.jpg")
l1_image_4 = File.open("#{File.dirname(__FILE__)}/MyBNB/db/seeds/data/1/image_3.jpg")
l1_image_5 = File.open("#{File.dirname(__FILE__)}/MyBNB/db/seeds/data/1/image_4.jpg")

l1.images.attach(io: l1_image_1,filename: "image.jpg")
l1.images.attach(io: l1_image_2,filename: "image.jpg")
l1.images.attach(io: l1_image_3,filename: "image.jpg")
l1.images.attach(io: l1_image_4,filename: "image.jpg")
l1.images.attach(io: l1_image_5,filename: "image.jpg")
l1.save!

u1 =    User.create!({
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.unique.email,
    password: 'password'
  }) 

l1 =Listing.create({
    "price": 65,
    "num_bedrooms": 1,
    "num_baths": 1,
    "city": "San Francisco",
    "state": " California",
    "country": " United States",
    "listing_type": "apartment",
    "ammenities": [
      "Kitchen",
      "Wifi",
      "Dedicated workspace",
      "Free parking on premises",
      "Private pool",
      "Pets allowed",
      "75\" HDTV with Amazon Prime Video, Apple TV, Disney+, HBO Max, Netflix",
      "Free washer \u2013 In unit",
      "Free dryer \u2013 In unit",
      "Security cameras on property"
  ],
    "description": "Close to Union Square, Nob Hill, Chinatown, and the cable car, this hotel suite offers a quintessential San Francisco experience. Your room at the Worldmark San Francisco is well equipped for exploring the city with a queen size bed, full bathroom, and mini-fridge to store leftovers from the area's great restaurants.\n\n\nThe workout room means you don't have to leave your routine when you're away from home. The main floor has a free laundry room.\n\nWiFi is $4.95/day. No on site parking, ask about options if necessary.",
    "main_title": "Luxury Convenient Safe Neighborhood",
    "sub_title": "Entire serviced apartment hosted by Michael",
    "space_type": "Studio",
    "cleaning_fee": 97.5,
    "service_fee": 48.75,
    "max_guests":7,
    "user_id":u1.id
})
l1_image_1 = File.open("#{File.dirname(__FILE__)}/MyBNB/db/seeds/data/1/image_0.jpg")
l1_image_2 = File.open("#{File.dirname(__FILE__)}/MyBNB/db/seeds/data/1/image_1.jpg")
l1_image_3 = File.open("#{File.dirname(__FILE__)}/MyBNB/db/seeds/data/1/image_2.jpg")
l1_image_4 = File.open("#{File.dirname(__FILE__)}/MyBNB/db/seeds/data/1/image_3.jpg")
l1_image_5 = File.open("#{File.dirname(__FILE__)}/MyBNB/db/seeds/data/1/image_4.jpg")

l1.images.attach(io: l1_image_1,filename: "image.jpg")
l1.images.attach(io: l1_image_2,filename: "image.jpg")
l1.images.attach(io: l1_image_3,filename: "image.jpg")
l1.images.attach(io: l1_image_4,filename: "image.jpg")
l1.images.attach(io: l1_image_5,filename: "image.jpg")
l1.save!

u1 =    User.create!({
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.unique.email,
    password: 'password'
  }) 

l1 =Listing.create({
    "price": 86,
    "num_bedrooms": 2,
    "num_baths": 1,
    "city": "Miami",
    "state": " Florida",
    "country": " United States",
    "ammenities": [
        "Kitchen",
        "Wifi",
        "Dedicated workspace",
        "Free parking on premises",
        "HDTV",
        "Elevator",
        "Central air conditioning",
        "Patio or balcony",
        "Luggage dropoff allowed",
        "Unavailable: Carbon monoxide alarm\nCarbon monoxide alarm"
    ],
    "listing_type": "apartment",
    "description": "All 24 apartments in the building are full-time Airbnb's and hosted by me!\n\n*Surgery friendly \n\nThis property is right next to the airport! If you\u2019re in Miami and looking for convenience, location and want to enjoy the city with all it\u2019s possibilities but have to stick to a tight budget look no further! Minutes away from the beach, sports venues, world renowned medical facilities, port of Miami, downtown and more! It is my goal provide a home for you during your stay!\n\n\nI\u2019m available to my guests at any time before and during their stay! This starts with the inquiry and ends at checkout, I\u2019m committed to providing the best possible service at all times!",
    "main_title": "Large & charming in house suite. w/ free parking",
    "sub_title": "Entire condo hosted by Eduardo",
    "space_type": "1 bedroom",
    "cleaning_fee": 129.0,
    "service_fee": 64.5,
    "max_guests": 7,
    "user_id":u1.id
})

l1_image_1 = File.open("#{File.dirname(__FILE__)}/MyBNB/db/seeds/data/1/image_0.jpg")
l1_image_2 = File.open("#{File.dirname(__FILE__)}/MyBNB/db/seeds/data/1/image_1.jpg")
l1_image_3 = File.open("#{File.dirname(__FILE__)}/MyBNB/db/seeds/data/1/image_2.jpg")
l1_image_4 = File.open("#{File.dirname(__FILE__)}/MyBNB/db/seeds/data/1/image_3.jpg")
l1_image_5 = File.open("#{File.dirname(__FILE__)}/MyBNB/db/seeds/data/1/image_4.jpg")

l1.images.attach(io: l1_image_1,filename: "image.jpg")
l1.images.attach(io: l1_image_2,filename: "image.jpg")
l1.images.attach(io: l1_image_3,filename: "image.jpg")
l1.images.attach(io: l1_image_4,filename: "image.jpg")
l1.images.attach(io: l1_image_5,filename: "image.jpg")
l1.save!

end