puts "Destroying tables..."

Listing.destroy_all
User.destroy_all
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

sf_listing_objects = [
    {
        "main_title": "Modern Studio Minimal Living Maximum Lifestyle 405",
        "price": 83,
        "cleaning_fee": 145.25,
        "service_fee": 166,
        "description": "The Dorel is your perfect escape from the hustle and bustle of city life. Newly remodeled in 2019, our partially furnished efficiency units were built with your comfort in mind with the necessities needed to settle into urban life including a private bathroom, full or double Murphy beds, sofa, microwave and mini-fridge. The building features a gourmet community kitchen, an outdoor patio deck, on-site laundry and high-speed Wi-Fi.\n\n\nEnjoy your studio with a private bathroom, full Murphy bed, sofa, smart TV, microwave and mini-fridge.\n\nThe building features a gourmet community kitchen, an outdoor patio deck, on-site laundry and high-speed Wi-Fi. Each door is equipped with Key Fob locks to ensure the safety of our guests.",
        "sub_title": "Room in aparthotel hosted by Dorel SF",
        "num_bedrooms": 1,
        "num_baths": 1,
        "min_guests": 2,
        "size": "Studio",
        "city": "San Francisco",
        "state": " California",
        "country": " United States",
        "listing_type": "in",
        "coordinates": {
"position": {
"lat": 37.68418727392442,
"lng": -122.46634260991704
},
"label": {
"color": "red",
"label": "Entire rental unit hosted by Andrew"
}
},
        "ammenities": [
            "Kitchen",
            "Wifi",
            "Free parking on premises",
            "TV with standard cable",
            "Luggage dropoff allowed",
            "Hair dryer",
            "Refrigerator",
            "Microwave",
            "Long term stays allowed"
        ],
        "location_desc": "Situated in the picturesque Nob Hill District of San Francisco, just a block away from Polk Street, The Dorel is set in the center of various bars, restaurants and shopping. Discover new cuisine and entertainment just by taking a 10-minute walk outside. Return to our outdoor deck space and entertainment room equipped with all the essentials to sit back and enjoy San Francisco with your neighbors, family, and friends.",
        "photo_urls": [
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/sf_photos/23/image_5.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/sf_photos/23/image_0.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/sf_photos/23/image_3.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/sf_photos/23/image_4.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/sf_photos/23/image_2.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/sf_photos/23/image_1.jpg"
        ],
        "coordinates": [
            37.80485222770692,
            -122.4389097230117
        ]
    },
    {
        "main_title": "Modern 3 Bedroom Home, Minutes to San Francisco!",
        "price": 205,
        "cleaning_fee": 358.75,
        "service_fee": 410,
        "description": "Recently renovated, modern, and spacious home is located in Daly City, a 10 min drive to San Francisco and a short drive to the mid- peninsula and South Bay (San Jose). \n\nThe unit is 3 bedrooms, 2 bathrooms, is spacious, light filled. The perfect option for business travelers, families, and small to mid-sized groups.\n\n\nI have lower level tenants who live in the downstairs unit. The washer and dryer (located in the shared garage) are shared with the tenants. Please be sure to remove any laundry from the washer/dryer in a timely manner.",
        "sub_title": "Entire rental unit hosted by Andrew",
        "num_bedrooms": 3,
        "num_baths": 2,
        "min_guests": 6,
        "size": "3 bedrooms",
        "city": "Daly City",
        "state": " California",
        "country": " United States",
        "listing_type": "rental",
        "ammenities": [
            "Kitchen",
            "Wifi",
            "Free parking on premises",
            "TV with standard cable",
            "Luggage dropoff allowed",
            "Hair dryer",
            "Refrigerator",
            "Microwave",
            "Long term stays allowed"
        ],
        "location_desc": "The unit is located in Daly City. Daly City is the city that borders San Francisco. You can access San Francisco in 10-15 mins from my home.\n\nYou can access mid- peninsula, SFO Airport, and South Bay (San Jose) quickly and easily from the unit.",
        "photo_urls": [
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/sf_photos/8/image_5.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/sf_photos/8/image_0.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/sf_photos/8/image_3.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/sf_photos/8/image_4.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/sf_photos/8/image_2.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/sf_photos/8/image_1.jpg"
        ],
        "coordinates": [
            37.68418727392442, -122.46634260991704
        ]
    },
    {
        "main_title": "Spacious, Classic SF Flat w 1 BR/2 BA",
        "price": 159,
        "cleaning_fee": 278.25,
        "service_fee": 318,
        "description": "Airbnb Enhanced Cleaning Protocol \u2022 600+ Mbps Internet \u2022 Walking Score 96\n\nThis is the non-hosted, fully private listing of my home in San Francisco. The flat sits on the top floor of a 3-unit 1920's building. The apartment is safe, quiet, very spacious, and centrally located to the best parts of San Francisco \u2014 Alamo Square (painted ladies), Hayes Valley, the Haight, and Golden Gate Park. I'm a long-time airbnb superhost, and I love helping my guests get the most of their stay.\n\n\nThings you'll like about the apartment: \nIt's really big. The queen bed is super comfortable and gets tons of complements. The kitchen has everything you might need. My neighborhood, NOPA, is very central to the rest of SF. The neighborhood has a walking score of 96 and a transit score of 80.\n\nWhile this rental is non-hosted, I do live in this apartment when I'm not renting it, so you'll notice that my personal bedroom and office will be locked during your stay. I also have food in the pantry and there will be some food tucked away in the fridge. \n\nMAIN BEDROOM\n* Large, quiet, 200 sq ft (19 sq meters) bedroom \n* Queen-sized platform bed with extra firm mattress and Euro Top (everyone LOVES this bed - check out the reviews)\n* Writing desk + two chairs \n* Walk-in closet\n\nLIVING ROOM / DINNING ROOM\n* 6 bay windows affording tons of natural light and views of classic victorian buildings\n* 42\" TV with Amazon Fire (no cable) \n* Dinning table for 4\n* This can also serve as another sleeping room, and there's an extra firm inflatable queen size mattress if you need (please let me know if advance!).\n\nTHE KITCHEN\n* The kitchen is fully stocked (dishes, silverware, glasses, etc) \n* Gourmet chef quality cookware (All Clad, Le Creuset, etc.)\n* Gas range/oven, dishwasher, microwave, coffee maker, and Cuisinart food processor \n* Breakfast nook perfect for 2-3\n\nOTHER AMENITIES\n* HE washing machine and gas heated dryer (in the apt)",
        "sub_title": "Entire condo hosted by Rob",
        "num_bedrooms": 1,
        "num_baths": 2,
        "min_guests": 4,
        "size": "1 bedroom",
        "city": "San Francisco",
        "state": " California",
        "country": " United States",
        "listing_type": "condo",
        "ammenities": [
            "Kitchen",
            "Fast wifi \u2013 151 Mbps",
            "Dedicated workspace",
            "43\" HDTV with Amazon Prime Video, Fire TV, HBO Max",
            "Free washer \u2013 In unit"
        ],
        "location_desc": "I have an online guest book which details all of my favorite places in NOPA. You get the link when you book with me.",
        "photo_urls": [
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/sf_photos/11/image_5.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/sf_photos/11/image_0.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/sf_photos/11/image_3.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/sf_photos/11/image_4.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/sf_photos/11/image_2.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/sf_photos/11/image_1.jpg"
        ],
        "coordinates": [
            37.78589172917465,
            -122.49143810101894
        ]
    },
    {
        "main_title": "Charming Suite - self check-in & parking near SFO",
        "price": 114,
        "cleaning_fee": 199.5,
        "service_fee": 228,
        "description": "Private guest suite in the heart of SF\u2019s diverse Visitacion Valley district, with a gorgeous view of the city. Just 13 mins from SFO, and a block from MUNI buses that take you anywhere in SF: browsing Fisherman\u2019s Wharf, tanning by Ocean Beach, or exploring Golden Gate Park. The suite is also next door to McLaren Park and Visitation Library. When you come back, our spacious studio with private entry, restroom, kitchen, bedroom, and fast internet is perfect for remote work and home entertainment.\n\n\nplease no pets allowed",
        "sub_title": "Entire guest suite hosted by Hui",
        "num_bedrooms": 2,
        "num_baths": 1,
        "min_guests": 3,
        "size": "1 bedroom",
        "city": "San Francisco",
        "state": " California",
        "country": " United States",
        "listing_type": "guest",
        "ammenities": [
            "City skyline view",
            "Garden view",
            "Kitchen",
            "Wifi",
            "Dedicated workspace",
            "Free parking on premises",
            "43\" TV with Disney+, Roku",
            "Patio or balcony",
            "Private backyard",
            "Security cameras on property"
        ],
        "location_desc": "Peaceful residential area close to everything: Library, swimming pool, park, Muni, post office, laundromat, Cafe, grocery store.",
        "photo_urls": [
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/sf_photos/2/image_5.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/sf_photos/2/image_0.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/sf_photos/2/image_3.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/sf_photos/2/image_4.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/sf_photos/2/image_2.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/sf_photos/2/image_1.jpg"
        ],
        "coordinates": [
            37.75061041299212,
            -122.50036449205284
        ]
    },
    {
        "main_title": "Business Ready in the Heart of The Castro * W/D",
        "price": 98,
        "cleaning_fee": 171.5,
        "service_fee": 196,
        "description": "A medium-sized room in a newly remodeled condo in the heart of The Castro District.   Located directly ON Castro street, you're mere steps away from all the local shops, restaurants and bars.  One block away from the Subway stop and major transit hub to reach all of San Francisco!\n\nWith a tastefully designed shared bathroom and plenty of closet space, this is a great room for couples as a home base for a long northern California trip or any traveler who wants the comforts of home.\n\n\nThis sunny room faces Castro Street, so you'll get plenty of light. With a cool bed/desk and luxury linens, closet space with hangers, and a smart 4K TV, you're pretty much set for lounging! Your bed can be lifted up and put away to give more space in the room and expose the built-in desk if you need to get work done.\n\nYou will want to venture down the hall to the chef's kitchen and cook something up and dine in style at the dining table that seats eight, or, wearing your designer robe, just grab some coffee from the Keurig and have your coffee out on to the deck and take in the morning.",
        "sub_title": "Private room in townhouse hosted by Keith",
        "num_bedrooms": 1,
        "num_baths": 1,
        "min_guests": 2,
        "size": "1 bedroom",
        "city": "San Francisco",
        "state": " California",
        "country": " United States",
        "listing_type": "room",
        "ammenities": [
            "Kitchen",
            "Wifi",
            "Dedicated workspace",
            "TV with standard cable",
            "Washer",
            "Dryer",
            "Hair dryer",
            "Refrigerator",
            "Microwave",
            "Security cameras on property"
        ],
        "location_desc": "The vibrant Castro District is literally at your feet. You can start your day with a cup of coffee downstairs at the local Philz coffee shop, wander across the rainbow crosswalk to grab a Posh Bagel, and up to Harvey Milk Plaza to people watch.",
        "photo_urls": [
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/sf_photos/22/image_5.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/sf_photos/22/image_0.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/sf_photos/22/image_3.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/sf_photos/22/image_4.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/sf_photos/22/image_2.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/sf_photos/22/image_1.jpg"
        ],
        "coordinates": [
            37.75549652225367,
            -122.49006481009066
        ]
    },
    {
        "main_title": "Sunset Surf Shack",
        "price": 190,
        "cleaning_fee": 332.5,
        "service_fee": 380,
        "description": "Welcome to your beach house in the city! Conveniently close to downtown via public transit yet 3 blocks from the ocean. Walking distance to cute shops, restaurants and cafes in the hip Outer Sunset neighborhood. As artists, the home is filled with original woodworking, ceramics and more. \nYou'll have everything you'd need for a long stay or quick trip.\n\nBringing a dog? Just please message host prior to booking for instructions. \n\nSee more in our  IG @sunsetsurfshack\n\n\nThe space is peaceful, quiet and private. Should you need more beds, we have a comfy air mattress that fits nicely in the living room.",
        "sub_title": "Entire guest suite hosted by Elyse",
        "num_bedrooms": 1,
        "num_baths": 1,
        "min_guests": 4,
        "size": "1 bedroom",
        "city": "San Francisco",
        "state": " California",
        "country": " United States",
        "listing_type": "guest",
        "ammenities": [
            "Beach access",
            "Kitchen",
            "Wifi",
            "Dedicated workspace",
            "Free street parking",
            "Pets allowed",
            "TV",
            "Luggage dropoff allowed",
            "Hair dryer",
            "Refrigerator"
        ],
        "location_desc": "The Outer Sunset is a safe and hip beach neighborhood filled with unique homes and several corridors with shops, cafes and restaurants. It's 25 minutes to downtown, 25 minutes to the airport and has easy access to other parts of the bay area. Street parking is free and ample.",
        "photo_urls": [
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/sf_photos/5/image_5.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/sf_photos/5/image_0.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/sf_photos/5/image_3.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/sf_photos/5/image_4.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/sf_photos/5/image_2.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/sf_photos/5/image_1.jpg"
        ],
        "coordinates": [
            37.77937952239036,
            -122.49349803741138
        ]
    },
    {
        "main_title": "Cozy live/work suite in safe area by Metro subway",
        "price": 81,
        "cleaning_fee": 141.75,
        "service_fee": 162,
        "description": "Newly-renovated suite with great wifi.  West Portal is a safe, peaceful \"transit village\" with cafes & restaurants. Walk 3 mins to the metro (subway) station. Wait 2-4 mins for train. Ride downtown in 15 mins!\n\nThe space\nAMENITIES include \n- hairdryer, body wash, shampoo, conditioner, towels\n- coffee, tea, creamer\n- iron & board upon request\n\nThere's a queen bed for two.  Or, ask for an air mattress.",
        "sub_title": "Entire guest suite hosted by Phil",
        "num_bedrooms": 1,
        "num_baths": 1,
        "min_guests": 2,
        "size": "1 bedroom",
        "city": "San Francisco",
        "state": " California",
        "country": " United States",
        "listing_type": "guest",
        "ammenities": [
            "Kitchen",
            "Fast wifi \u2013 578 Mbps",
            "Dedicated workspace",
            "55\" HDTV with Amazon Prime Video, Netflix",
            "EV charger - level 2",
            "Washer",
            "Dryer",
            "Bathtub",
            "Luggage dropoff allowed",
            "Security cameras on property"
        ],
        "location_desc": "JUST STEPS from award-winning restaurants, bars, groceries, and boutique shops.",
        "photo_urls": [
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/sf_photos/15/image_5.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/sf_photos/15/image_0.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/sf_photos/15/image_3.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/sf_photos/15/image_4.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/sf_photos/15/image_2.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/sf_photos/15/image_1.jpg"
        ],
        "coordinates": [
            37.75983945960185,
            -122.42964000924566
        ]
    },
    {
        "main_title": "Amazing room in the Outer Richmond district!",
        "price": 80,
        "cleaning_fee": 140.0,
        "service_fee": 160,
        "description": "We follow Airbnb's cleaning standards.  Your room and living space while staying here will have been cleaned and sanitized according to Airbnb's 5-step enhanced cleaning process prior to your arrival.  Airbnb partnered with the experts to develop the Airbnb 5-Step enhanced cleaning process. \nCleaning practices includes: The use of disinfectants and or sanitizer.  \nThe cleaning of frequently used areas such as light switches and doorknobs. \nWe wear protective gear to prevent cross contamination\n\n\nThis is a unique space with a separate entrance to the house. Before entering the room you see the backyard for which the guests are free to use. The sheets are changed for every new guest and the room is always very clean.This is a great nice room with a huge 65 inch TV with cable & Netflicks, plus a comfortable bed. It's great if you want privacy. \n\nIt's a nice location close to Ocean Beach, Land's End and other great attractions. A private bathroom, unshared is included. Take 38R Muni bus ride for quick public transportation to the downtown area or an uber at only $6 if it's a pool, or about $10 bucks if it's an uber X. Overall it is an awesome value for what you get. This is a great place in San Francisco.",
        "sub_title": "Private room in home hosted by Marcia",
        "num_bedrooms": 1,
        "num_baths": 1,
        "min_guests": 2,
        "size": "1 bedroom",
        "city": "San Francisco",
        "state": " California",
        "country": " United States",
        "listing_type": "room",
        "ammenities": [
            "Wifi",
            "Free street parking",
            "TV with standard cable",
            "Patio or balcony",
            "Backyard"
        ],
        "location_desc": "I love this neighborhood because of it's location. It is very chill compare to other parts of the city which can be a bit chaotic but it is still easy to get around if need be. There are many awesome outdoor places close by within walking distance.",
        "photo_urls": [
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/sf_photos/16/image_5.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/sf_photos/16/image_0.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/sf_photos/16/image_3.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/sf_photos/16/image_4.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/sf_photos/16/image_2.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/sf_photos/16/image_1.jpg"
        ],
        "coordinates": [
            37.78604385419523,
            -122.40389080434012
        ]
    },
    {
        "main_title": "Laminate floor large spacious blue room",
        "price": 52,
        "cleaning_fee": 91.0,
        "service_fee": 104,
        "description": "Newly remodeled large blue room is in the back of the house, very quiet and great for work from home.  Looking for guests to share with female housemates. LGBTQ and minority friendly.\n\nI provide\n-500 Thread Count Sheets\n-Comfortable queen mattress\n-Towels\n-Toiletries\n-Comfortable desk for work from home\n-high speed internet from comcast(around 50-100mbps tested just now)\n-Supermarket and laundry(about $4.50) nearby\n-bus right in front, walk to bart(15min) which takes you downtown in 15 minutes\n\n\nLooking for guests to share with long term female housemates. LGBTQ and minority friendly.  Please write us with a description with yourself and what brings you to the area.  We are open to female housemates only at the moment due to housemate request\n\nComes furnished with a queen sized bed, a desk, a chair and a bookshelf! We got easy street parking and three buses in the neighborhood, so it's great if you are in town for long vacation or just looking to settle in the city! Walk about 0.9 mile to bart, so it's not bad if you are coming into SFO with your stuff.\n\nRoom is at the side of house next to the kitchen, so it does get some kitchen noise but is otherwise quiet.  The room is spacious at approximately 13x13 with a windows that comes with blinds and drap.  You share bathroom with 1 other person and we got a big eat in kitchen.  The house has comcast gig speed speed wifi internet and multi-mesh network.  The speed is about 50 to 300mbps in real life depending on where you are in the house and time of the day.\n\nSafeway supermarket is a few doors down, laundry is downstairs, freeway and bart are both 1 mile away, and there are three buses that runs just in front of the house: the 36, 43, and 23. So bart runs until 12:30, which is when the last train leaves downtown and such. After that local taxi like service Uber, Lyft and Sidecar are great ideas and affordable.\n\nFor going out: Mission district is on the bart line and very fun as there are lots of bars and pubs with no cover charge, downtown is easily reachable by bart(40min) and more posh if that's your cup of tea! I also recommend Thursday night at Academy of science which is geeky and really really cool.\n\nWe have a laundromat downstairs and it cost $4.50 to wash and dry a load of clothes. I will not be providing breakfast but there are space in the refrigerator and shelf space for you to put food, there is a supermarket right next to the house that is open until midnight.\n\nThere will be housemates, likely other professionals and myself.  We are usually busy with whatever we have going on in our lives, looking for others who are independent and conscious of socially aware in sharing space.  This will be a female household where we welcome female identifying guests, house rules are 1. Quiet hour 10pm to 7am 2. Clean up after yourself 3. Stay within your assigned fridge space and don't eat other's food\n\nif this looks good so far, please drop us a note with your desired dates, tell us a little about yourself and we'll get back to you, thanks!",
        "sub_title": "Private room in home hosted by Jia",
        "num_bedrooms": 1,
        "num_baths": 2,
        "min_guests": 1,
        "size": "1 bedroom",
        "city": "San Francisco",
        "state": " California",
        "country": " United States",
        "listing_type": "room",
        "ammenities": [
            "Kitchen",
            "Wifi",
            "Dedicated workspace",
            "Free parking on premises",
            "Washer"
        ],
        "location_desc": "The neighborhood is very residential, close to freeway and bart, it's easy to get here from the airport but it's not super close to downtown or the drinking spots. Mission is 2 bart station away and there's lots of stuff there!",
        "photo_urls": [
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/sf_photos/18/image_5.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/sf_photos/18/image_0.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/sf_photos/18/image_3.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/sf_photos/18/image_4.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/sf_photos/18/image_2.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/sf_photos/18/image_1.jpg"
        ],
        "coordinates": [
            37.747776502250574,
            -122.42174358640794
        ]
    },
    {
        "main_title": "Cozy Room near Westlake | Beach | BART",
        "price": 44,
        "cleaning_fee": 77.0,
        "service_fee": 88,
        "description": "This is a private room in a 2-bedroom guest suite located near Westlake Center & just 10 minutes drive from the beach & close to BART.\n\nConveniently located within walking distance of Starbucks, Safeway, & other stores that you'll need! There are many restaurants right around the corner at the Westlake Shopping Center.\n\nThere are also many parks, freeways, and public transit with BART subway.\n\nLonger inquiries are very welcome. Inquire even if the calendar is blocked off.\n\n\nYou will occupy Room A in a furnished 2-bedroom with 1 bath in a single-family home. It has the basic amenities for short-term, long-term stays, and business travelers. The house has a balcony where you could stay and relax while sipping a cup of tea or coffee. \n\nThe house comes with heating, Wi-Fi. During your stay, you can also enjoy using a convenient kitchen. Our Airbnb is within walking distance from Starbucks, Safeway, and other stores that you'll need! There are many restaurants right around the corner at the Westlake Shopping Center.\n\nThe garage is converted into a living room with a dining area.\n\nThere are also many parks nearby, freeway entrances to the 280 freeway to go up north to San Francisco, or south to the South Bay. You can also easily access public transit with BART, which is up the street on John Daly Blvd.\n \nShuttle:\nShuttles are free unless noted otherwise. Shuttles usually operate during peak commute hours, Monday through Friday excluding most public holidays. Your free shuttle is at Daly City Station, 500 John Daly Blvd, Daly City which is an 18-minute walk or 5-minute drive by car from the property. Its destination is Balboa Park BART, Daly City BART, Bayshore neighborhood.\n\n**BASICS AND FURNISHINGS**\n \n**ENTERTAINMENT**\n- High-speed Wi-Fi\n \n**KITCHEN ITEMS**\n- Full kitchen with some of the cooking basics that you need to cook and eat\n- Refrigerator, microwave, bread toaster, and range/oven with hood\n- Knives, spatulas, pots, and pans\n- Salt and pepper\n- Cups, mugs, plates, bowls for four\n \n**AMENITIES**\n- Lockbox and Lockpad entry into the house \n- bedroom has its own lock\n- Temperature Controlled Heater\n- Luxurious and comfortable queen bed with memory foam mattress\n- Safe neighborhood with paid driveway parking for 2 cars.\n \n30 days+ stays ideal!\n\nWelcome home!",
        "sub_title": "Private room in guest suite hosted by Gi'Angelo",
        "num_bedrooms": 1,
        "num_baths": 1,
        "min_guests": 1,
        "size": "1 bedroom",
        "city": "Daly City",
        "state": " California",
        "country": " United States",
        "listing_type": "room",
        "ammenities": [
            "Kitchen",
            "Wifi",
            "Dedicated workspace",
            "Free street parking",
            "Backyard",
            "Hair dryer",
            "Refrigerator",
            "Microwave",
            "Long term stays allowed",
            "Security cameras on property"
        ],
        "location_desc": "The Westlake neighborhood has many families, children, and other working professionals. There are many great restaurants and shops just two blocks away in the Westlake Shopping Center.",
        "photo_urls": [
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/sf_photos/9/image_5.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/sf_photos/9/image_0.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/sf_photos/9/image_3.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/sf_photos/9/image_4.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/sf_photos/9/image_2.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/sf_photos/9/image_1.jpg"
        ],
        "coordinates": [
            37.68822174745753, -122.46270112243727
        ]
    },
    {
        "main_title": "King beds, romantic views, modern, quiet suite",
        "price": 162,
        "cleaning_fee": 283.5,
        "service_fee": 324,
        "description": "Your family and friends will love you for bringing them to this private, quiet, comfy, modern guest suite. Located in a quiet neighborhood, yet just minutes to everywhere you'll want to go. Spacious bedrooms with king beds.  Huge living/dining area. Fully equipped kitchen. Balcony decks with romantic views of the Bay. Two TVs. Quality furnishings. Immaculately clean.  Easy parking. As little as 20 minutes to Civic Center, SF airport, Golden Gate Bridge, museums, & beaches. Highly rated in SF.\n\n\nEnjoy this 100% private, spacious, upstairs guest suite in a quiet, residential neighborhood. You get 1,500 sq ft (140 sq. m) of space. Everything has been recently upgraded. \n\nYour friends and family will love being in the big, sunny, airy living room with views of the San Francisco Bay and Silicon Valley, high ceiling, fireplace, 55\" TV, and large view deck.  Modern kitchen & BBQ.  Relax in the deep tub.  Have sweet dreams in the huge King and Cal King beds.  You\u2019ll love the comfy, quality furnishings. Everything you need is provided. Cleaned to the highest standard. \n\nPlease note:\nBy making a reservation, you are agreeing to be a good neighbor. There is a zero tolerance policy for any excessive noise, additional guests, heavy intoxication, or disturbance to the neighborhood in any way.\n\nKITCHEN\nEnjoy making a homemade meal or reheating leftovers in this spacious, updated kitchen complete with:\n - Coffee maker, coffee grinder, coffee and tea\n - Cooking essentials\n - Oven and range\n - Dishwasher\n - Large refrigerator with ice maker and water filter\n - Toaster oven and microwave\n - Garbage disposal\n - BBQ \n - Kitchen nook with seating for four people.\n\nLIVING/DINING AREA:\n- Spacious living room with seating for everyone to chat, play games or watch your favorite show or movie on our 55\" smart TV with 70+ channels.\n- Enjoy a meal at the beautiful dining room table for 6 with views of San Francisco Bay.\n- Enjoy a space with beautifully curated art and sweeping vistas.\n\nBEDROOM 1\n- California king bed (extra long).\n- Big closet with mirrored doors, make looking your best easy.\n- Space heater, electric blanket, iron, ironing board, hangers.\n- Big window.\n- Blackout curtains.\n\nBEDROOM #2\n- King bed.\n- Big closet with mirrored doors: get dressed quicker and look your best.\n- 48\" TV with XBox 360.\n- Work desk.\n- Space heater, electric blanket, iron, ironing board, hangers.\n\nYou'll find all the amenities you need including endless hot water, cooking essentials, outdoor grill, paper towels, first aid kit, soap and shampoo, towels, laundry access, and even emergency toiletries. You host lives onsite and is available to help with anything. \n\n\nHOUSE RULES \n- Check-in: After 4:00 PM\n- Checkout: 11:00 AM\n- Self check-in with keypad\n- Not suitable for children (2-12 years)...if they run around they'll disturb the other guest.\n- No smoking\n- No pets\n- No parties or events\n- Read the house manual after you reserve to ensure you'll be happy here.\n- On your Airbnb on your profile, have a clear face-picture and your name as it appears on your government ID.\n- Provide the full names of your guests, and verified profiles if requested.\n- 4 people max; no additional people on the property without written permission.\n- No loud noise M-Th 9pm to 8am, Fri-Sat 11pm-10am. Lights out 2am. \n- Clean up after yourself. Do your dishes. Put all trash into a container.\n- Wear tennis shoes or slippers.\n- No leaving anything smelly, commercial use, or firearms.\n- No obvious intoxication.\n- Pay any fees charged for damage or unusual cleaning.\n- Leave immediately if you can\u2019t follow the house rules :D\n\n\nOTHER THINGS TO NOTE\n\n4 GUESTS MAXIMUM.\n\nTHIS IS A GUEST SUITE. You'll have 100% privacy and most likely you won't notice anyone else is here, however:\n- This place shares two walls with a room that's also used as an Airbnb. It has a door that's locked on both sides. \n- There is no access to the backyard. \n- Your host lives downstairs. \n\nPARKING\n- There's usually street parking right outside, but if you need help call me and I'll make sure you can park close by. \n- Don't leave anything visible or valuable in your car, anywhere in SF. You can drop your bags anytime.\n\nQUIET HOURS\n- Please enjoy yourselves, but please don't disturb the other residents who may be sleeping. \n- Quiet hours from 9pm-8am Sun-Thurs, or 11pm-9am Fri-Sat. \n- Lower voices and music, or take the party to the bars. \n- Step lightly late at night...sound travels through the floor.\n- Lights out 2:00a.m. \n- This is not a party house. Heavy intoxication late at night is not recommended here.\n\nNAMES OF ALL GUESTS MUST BE PROVIDED TO YOUR HOST. No additional guests without written permission.\n\nEARLY CHECK-IN: \n- Check in is after 4pm. \n- No early check-in without written permission. \n- I'll do my best to offer you early check-in if it's possible. You don't need to ask, I'll let you know the day of your arrival. \n- Most likely it will be close to 4pm. \n- You can drop your luggage anytime, but there's no waiting area or restroom.\n\nLATE CHECKOUT: Checkout is before 11am. Late checkout is typically not available. Please make every effort to checkout on time.  Otherwise there may be a fee.\n\nWASHER/DRYER are downstairs in your host's quarters and available by appointment.\n\nNO SMOKING anytime, anywhere on the property. Please go to the sidewalk. Pick up any trash.\n\nTHERE IS NO HOT TUB, MAKE SURE YOU'VE GOT THE RIGHT LISTING: I have two listings that look similar. This one does NOT have a hot tub.\n\nIT'S A HEALTHY WALK to places such as McLaren Park and the shops on San Bruno Ave. Usually you'll want to take a quick car ride. Uber car service is cheap and fast here.\n\nIF DAY DRINKING OR CONTINUOUS LOUD MUSIC is part of your planned activities at the house, then this is not the right place for you.\n\nEMOTIONAL SUPPORT ANIMALS are welcome here. I just require that you provide a signed letter from your doctor or healthcare professional, on their letterhead that says an ESA was prescribed for a disability.  I also I ask that you clean up any pet hair using the hand vacuum that\u2019s provided.",
        "sub_title": "Entire guest suite hosted by Lance",
        "num_bedrooms": 2,
        "num_baths": 1,
        "min_guests": 4,
        "size": "2 bedrooms",
        "city": "San Francisco",
        "state": " California",
        "country": " United States",
        "listing_type": "guest",
        "ammenities": [
            "Bay view",
            "Mountain view",
            "Kitchen",
            "Wifi",
            "Dedicated workspace",
            "Free street parking",
            "55\" HDTV with Roku, standard cable",
            "Free washer \u2013 In building",
            "Free dryer \u2013 In building",
            "Security cameras on property"
        ],
        "location_desc": "This safe, quiet neighborhood in the hills of SF is a short walk from McLaren Park where you can enjoy a hike or long run, find a natural spring, and take in views of the Bay Area.\n\nThis location is quiet and private, but it's about a 1 mile walk to restaurants, so usually you'll start your adventures with a short car ride. San Francisco is a small city, and you can go anywhere in a few minutes by car, traffic permitting. You can drive to the Golden Gate Bridge in as little as 20 minutes if you get up early. Best to plan your travel during non-commute hours.\n\nGetting around is easy. Car services arrive so fast you have to be ready when you call. Buses run nearby that go nice places.\n\nFrom here, head out to experience SF's world-class food, shopping, museums, parks, and other delights. If you're short on time, plan a meal in nearby Bernal Heights (10 mins by car), where you may get in without a reservation (but reservations recommended). Other districts on this side of town include The Mission, SOMA, Lower Haight, The Castro, the Waterfront, the Fillmore, the Financial District, Noe Valley, the Embarcadero, Union Square, and South Park.\n\nYou can also walk to modest San Bruno Avenue in about 15 minutes where you can:\n- Get a quick meal or a dessert\n- Spot unusual vegetables, fruit, fish, herbs, and medicines in the markets\n- Get your nails done",
        "photo_urls": [
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/sf_photos/1/image_5.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/sf_photos/1/image_0.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/sf_photos/1/image_3.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/sf_photos/1/image_4.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/sf_photos/1/image_2.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/sf_photos/1/image_1.jpg"
        ],
        "coordinates": [
            37.75849878557058,
            -122.41882534327269
        ]
    },
    {
        "main_title": "The Jord Suite - Newly Renovated near BART station",
        "price": 69,
        "cleaning_fee": 120.75,
        "service_fee": 138,
        "description": "The Boholoft is a three-suite loft bordering San Francisco and Daly City. Located in a diverse and lively neighborhood of Mission, our loft is newly renovated with hardwood floors, full kitchen, heater & AC, TVs, and sliding wood barn doors. The loft is conveniently located steps away from major bus lines, and minutes from Daly City BART station.\n\nUpdates: Starting from 9/5/2020, we will provide free parking for our guests. Please refer to check in instructions for detailed parking information.\n\n\nEnjoy your own private suite in our newly renovated bohemian loft. This is a private upper level suite with one bedroom, private bathroom, shared kitchen, and shared living room.\n\n\n\u00b7 Heater & AC\n\n\u00b7 Queen Memory Foam Mattress\n\n\u00b7 High Speed Internet\n\n\u00b7 Samsung TV with Netflix and YouTube \n\n\u00b7 Wood Barn Door\n\n\u00b7 Clothes rack\n\n\u00b7 Fresh Bath Towels\n\n\u00b7 Shampoo, Conditioner, and Shower Gel\n\nAs superhosts, we devoted ourselves to make your stays comfortable and special. We hope your experience here at the Boholoft can be part of your beautiful travel memories. \nIn order for everyone to have a pleasant stay, we would truly appreciate it if you can follow our house rules, and confirm that it has been reviewed by the time of your booking. Thank you for your understanding and cooperation!\n\nPHOTOGRAPHY & VIDEOGRAPHY\n\nIf you want to use this space for a photoshoot/video shoot, you must contact us to discuss about it. We had collabed with awesome photographers, and video production teams to create digital contents. Any photoshoot/video shoot without our permission is prohibited.\n\nHOUSE RULES/ \u201cINSTANT BOOK\u2019 AGREEMENT\n\nDo not book this place if you\u2019re:\n\n-          Drug users and alcoholic;\n-          Loud; like to play loud music in the unit; not respectful to others;\n-          Uncomfortable with sharing entrance, kitchen, and living room with other guests\n\nYou must keep your personal belongings in your own suite. We\u2019re not responsible for any loss items in the \u201ccommon areas\u201d.\n\nNo other guests allowed unless on reservation. Please noted that only 2 guests are permitted to stay in this unit. If you would like to invite someone over during daylight hours, please contact us to let us know. Any unauthorized overnight guests will be charged $75 per person.\n\nNo smoking/vaping in the loft. Extra cleaning fees to remove odor/stains may be applied.\n\nNo parties/events.\n\nPlease keep noise to a minimum after 9:00pm.\n\nPlease wash your dishes after use, and keep the common areas clean.\n\nDo not use the hanging chair aggressively. Swing the chair gently to relax. One person at a time. Use at your own risk.\n\nPlease make sure you\u2019ve acknowledged the cancellation policy, and arrange your trip accordingly. We follow the Airbnb cancellation policy to process refund requests with no exceptions.\n\nMost importantly, have so much fun and enjoy your stays! If you have any questions, need any suggestions during your stay, we\u2019re always here to assist you. We sincerely hope you a wonderful trip!",
        "sub_title": "Private room in home hosted by Evelyn & Kevin",
        "num_bedrooms": 1,
        "num_baths": 1,
        "min_guests": 3,
        "size": "1 bedroom",
        "city": "Daly City",
        "state": " California",
        "country": " United States",
        "listing_type": "room",
        "ammenities": [
            "Kitchen",
            "Wifi",
            "Free parking on premises",
            "32\" HDTV with Hulu, Netflix",
            "Air conditioning",
            "Luggage dropoff allowed",
            "Hair dryer",
            "Refrigerator",
            "Microwave",
            "Security cameras on property"
        ],
        "location_desc": "Bordering San Francisco and Daly City, the building is steps away from major bus lines, minutes from Daly City BART station, and a 15-minutes Uber from Downtown. The area has a Walk Score of 80 and is brimming with coffee shops and restaurants.",
        "photo_urls": [
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/sf_photos/4/image_5.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/sf_photos/4/image_0.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/sf_photos/4/image_3.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/sf_photos/4/image_4.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/sf_photos/4/image_2.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/sf_photos/4/image_1.jpg"
        ],
        "coordinates": [
            37.679384043106644, -122.48649217397178
        ]
    },
    {
        "main_title": "Charming spot with outdoor shower close to it all",
        "price": 91,
        "cleaning_fee": 159.25,
        "service_fee": 182,
        "description": "Relax in a cozy 128-square-foot (9.5 x 13.5) room with a queen-size bed in an eco-friendly house with a separate entrance, private outside patio & garden, half-bath, private outdoor hot/cold shower, off-street parking, Wi-Fi & mini fridge. Within walking distance of downtown Mill Valley,  dining, shopping,  historic Sweetwater Music Hall; minutes to hiking/biking trails, tennis, golf, beaches & Muir Woods, 20 minutes to SF. Nightly fee includes the City of Mill Valley's 12% tourism tax.\n\n\nI have lived in my house, on a quiet residential street, for more than three decades and I want you to feel as at home here as I do. The cozy room features an armoire for your clothes, a comfy chair and desk, a generous mirror (just because), two nightstands each with a lamp for nighttime reading and outlets to charge your phone and laptop, a bookshelf filled with books to inspire as well as guide you to local hiking/biking trails and attractions, a cozy bed with 100 percent cotton sheets, a mini fridge, a coffee/tea maker and coffee/teas, creamer and sweeteners.\n\nYou'll also find 100 percent cotton robes to use while you are relaxing here. \n\nProof of COVID-19 vaccination or negative COVID test within 24 hours required.\n\nPlease note that although this is a private room with a separate entrance, it still is a room in a house that I live in with my dog with a shared wall. I have put up lots of soundproofing, but it's not perfect. I am very respectful of my guests and limit noise as much as possible past 10 p.m., but you may hear muffled human voices, household noises and the occasional dog bark and I will likely hear you. I would also appreciate limiting noise after 10 p.m. Thank you!",
        "sub_title": "Private room in home hosted by Vicki",
        "num_bedrooms": 1,
        "num_baths": 1,
        "min_guests": 2,
        "size": "1 bedroom",
        "city": "Mill Valley",
        "state": " California",
        "country": " United States",
        "listing_type": "room",
        "ammenities": [
            "Garden view",
            "Wifi",
            "Dedicated workspace",
            "Free parking on premises",
            "Private patio or balcony",
            "Luggage dropoff allowed",
            "Hair dryer",
            "Long term stays allowed"
        ],
        "location_desc": "My neighborhood is quiet, lush, close to downtown, trails, parks, shopping, library, indie movie theater (part of the Mill Valley Film Fest), the historic Sweetwater Music Hall, Throckmorton Theatre (which has comedy, music, theater, etc.) restaurants, and our public golf course and tennis courts, and to the highway. Most of my neighbors have lived on this block for a long time, and it has a nice welcoming feel.",
        "photo_urls": [
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/sf_photos/13/image_5.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/sf_photos/13/image_0.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/sf_photos/13/image_3.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/sf_photos/13/image_4.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/sf_photos/13/image_2.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/sf_photos/13/image_1.jpg"
        ],
        "coordinates": [
            37.74954103592308,
            -122.49950618889063
        ]
    },
    {
        "main_title": "GREAT PLACE, CONVENIENT LOCATION, SLEEP 4",
        "price": 199,
        "cleaning_fee": 348.25,
        "service_fee": 398,
        "description": "The Area:\n\nThis is the best of both worlds. Great quiet area with amazing amenities and yet close to everything you can imagine. The downtown Muni is just around the corner, 15-20 minutes to most of the tourist attractions: Union Square, Golden Gate Park, Golden Gate Bridge, Ocean Beach, Japanese Tea Garden and much more. One of the best restaurants is 1-5 blocks away. Huge Super Market is three blocks away, banks, bars, public buses all in a short, walking distance.\n\n\nAccommodations:\n\nThis is a recently remodeled, fully furnished, very cozy and warm place. Finished with love and thoughtfulness. One Bedroom, One Bath contains two queen beds in the bedroom, one sofa bed in the living room. The digital lock was installed for your 24/7 accessibility. No more keys exchange. One car parking available. Please park your car on the left side of the driveway. The parking space for customers marked with yellow lines. Do not block the garage door.",
        "sub_title": "Entire rental unit hosted by Boris",
        "num_bedrooms": 2,
        "num_baths": 1,
        "min_guests": 4,
        "size": "1 bedroom",
        "city": "San Francisco",
        "state": " California",
        "country": " United States",
        "listing_type": "rental",
        "ammenities": [
            "Kitchen",
            "Wifi",
            "Free parking on premises",
            "TV with standard cable",
            "Luggage dropoff allowed",
            "Hair dryer",
            "Refrigerator",
            "Microwave",
            "Long term stays allowed"
        ],
        "location_desc": "Coffee shop is around the corner, Walgreen is one block away, laundromat is right next to the Walgreen.",
        "photo_urls": [
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/sf_photos/6/image_5.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/sf_photos/6/image_0.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/sf_photos/6/image_3.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/sf_photos/6/image_4.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/sf_photos/6/image_2.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/sf_photos/6/image_1.jpg"
        ],
        "coordinates": [
            37.78807879744571,
            -122.45865078381752
        ]
    },
    {
        "main_title": "Airy and Comfy Bedroom with ensuite Bath",
        "price": 58,
        "cleaning_fee": 101.5,
        "service_fee": 116,
        "description": "This airy and comfy unit comes with your own ensuite private bathroom. Ideal for independent travelers seeking a convenient place to rest after a day of exploring the city. We're in a safe, diverse neighborhood with shops, markets and eateries within blocks away. An easy 10 minute car ride from SFO. Bus lines pick up 2 blocks from our house and drop off in downtown SF in under 30 minutes, with stops in the famed Mission District all along the way.\n\n\nThe unit comes with a plush queen size bed, workstation, closet, and mini fridge. Keyless entry makes for a straight forward check in process. Guests also have access to a shared kitchenette with appliances (microwave, toaster, coffee maker, water kettle), a dining space, and stocked coffee station; please note, this is a kitchenette, and is not equipped with a range or oven.\n\nThe kitchenette is just outside the unit, through the door on the left.",
        "sub_title": "Private room in home hosted by Darrell",
        "num_bedrooms": 1,
        "num_baths": 1,
        "min_guests": 2,
        "size": "1 bedroom",
        "city": "San Francisco",
        "state": " California",
        "country": " United States",
        "listing_type": "room",
        "ammenities": [
            "Wifi",
            "Dedicated workspace",
            "Free street parking",
            "Bathtub",
            "Luggage dropoff allowed",
            "Hair dryer",
            "Microwave",
            "Long term stays allowed",
            "Security cameras on property"
        ],
        "location_desc": "The historic Portola District is diverse, safe, and full of tasty restaurants to try. We especially like Taqueria Gonzalez, Jim Georgie's donuts, and Chef Li's hot pot! A couple blocks away, there is the MUNI 9 (9R) and 8 (8AX), to go directly downtown; rideshare can get you there in as little as 10 minutes!\nAdditionally:\n-= 10 Min. care ride from SFO\n-= 1 block from the restaurants, shops, and cafes of San Bruno Ave.\n-= 20 min. walk to John McLaren Park",
        "photo_urls": [
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/sf_photos/14/image_5.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/sf_photos/14/image_0.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/sf_photos/14/image_3.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/sf_photos/14/image_4.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/sf_photos/14/image_2.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/sf_photos/14/image_1.jpg"
        ],
        "coordinates": [
            37.76555564314785,
            -122.43633480623272
        ]
    },
    {
        "main_title": "Room 4 with a private bathroom for one person only",
        "price": 55,
        "cleaning_fee": 96.25,
        "service_fee": 110,
        "description": "A small and cozy bedroom with a single bed and private bathroom, desk, and wardrobe. Located on the ground floor with two other rooms. A washer and dryer (detergents are supplied) are free to use in the garage before 10 pm. Shared dinning area. Maximum guests we accommodate are 7 guests or less in the entire house (downstairs 1 guest and upstairs max 6 guests ) regulated by local regulation. In addition, the host and cohost live on the property, which is also regulated by local regulations.\n\n\nWe sincerely ask all tenants, including us, to follow our house rules, and respect other tenants by avoiding creating excessive noise. The house is being set up for rest and working and study. As hosts, we only can set ourself as patterns in such communal living environment. We reserve all rights under Airbnb policy and Daly city regulation for our Airbnb businesses.",
        "sub_title": "Private room in home hosted by Chia Lee",
        "num_bedrooms": 1,
        "num_baths": 1,
        "min_guests": 1,
        "size": "1 bedroom",
        "city": "Daly City",
        "state": " California",
        "country": " United States",
        "listing_type": "room",
        "ammenities": [
            "Wifi \u2013 28 Mbps",
            "Dedicated workspace",
            "Free washer \u2013 In building",
            "Free dryer \u2013 In building",
            "Shared backyard \u2013 Fully fenced"
        ],
        "location_desc": "In and Out burgers, Taqueria Dos Charros, and Krispy Kreme are steps away from us. You can walk in and order now. A few blocks away from Mcdonald\u2019s and Korean supermarkets, Ranch 99, and other large shopping malls. CVS, Gas station and M&R car washer are also within walking distance.",
        "photo_urls": [
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/sf_photos/17/image_5.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/sf_photos/17/image_0.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/sf_photos/17/image_3.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/sf_photos/17/image_4.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/sf_photos/17/image_2.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/sf_photos/17/image_1.jpg"
        ],
        "coordinates": [
            37.69225600152861, -122.46294388826927
        ]
    },
    {
        "main_title": "Charming Garden Apartment, Steps From The Beach",
        "price": 155,
        "cleaning_fee": 271.25,
        "service_fee": 310,
        "description": "Imagine falling asleep to the sound of crashing waves.  This clean, quiet garden apartment is perfect for the nature loving city dweller. Steps from the beach, Golden Gate Park, the Zoo and more.  Ample street parking and MUNI train 2 blocks away.\n\n\nPrivate in-law apartment offering 2 beautifully decorated, clean and comfortable rooms.  The bedroom includes a queen bed with crisp linens a down comforter, warm wool rug, beautiful art and closet and dresser for your belongings.  The second room is a living space with a couch that converts to a full bed, a separate comfortable reading chair and lamp. The 42\" flat screen is equipped with Apple TV and high speed wireless internet. The kitchenette is fully stocked with pots, pans and dishes. A microwave, toaster oven, electric kettle, 5 cup coffee maker, electric induction counter top range and small fridge complete the kitchen and make it operational for light cooking.   \nComplimentary coffee, tea and a bottle of wine offered to all guests.   The  private bathroom is small but bright and clean with shower over tub, complementary shampoo, conditioner and body wash provided.    The private garden has a bistro table making it a perfect spot for morning coffee while listening to the waves and surrounded by beautiful plants and flowers.      Ample, free street parking available in the neighborhood.",
        "sub_title": "Entire home hosted by Heather",
        "num_bedrooms": 2,
        "num_baths": 1,
        "min_guests": 3,
        "size": "1 bedroom",
        "city": "San Francisco",
        "state": " California",
        "country": " United States",
        "listing_type": "home",
        "ammenities": [
            "Garden view",
            "Beach access \u2013 Beachfront",
            "Kitchen",
            "Wifi",
            "Free street parking"
        ],
        "location_desc": "The \"outerlands\" as this area of the city used to be called is where nature meets urban, widely and wonderfully. Families, surfers, artists, hipsters, techies and eccentrics come together to create a multicultural neighborhood that is dominated by the ocean and the sky!\nReally I think the Sunset District is San Francisco's best kept secret. It is clean and safe and quiet at night. You are about a half hour from the hustle and bustle of downtown (by car or public transport). Out here the streets are wider, the backyards bigger, and free parking is easy to find. People who like the outdoors love the location, especially for surfing, jogging, cycling, and hiking.\nTypically the Sunset can be foggy in June and July, but is clear and beautiful most of the rest of the year. Fall is stellar. Yearly temperatures hover in the 60-65 degrees. Golden Gate Park is only 4 blocks north and is filled with absolutely everything you can imagine: free concerts, archery ranges, entertainment pools, beautiful gardens, a bison paddock, polo field, duck ponds, and everything that you could possibly imagine! Including, The Academy of Science Museum, De Young art museum, and Japanese Tea Garden, The Arboretum and Conservatory of Flowers, plus great hiking, running and biking trails. We're also a popular destination for marathon participants and concert-goers, with events nearby like Bay to Breakers, Hardly Strictly Bluegrass Festival, and Outside Lands. There is a beautiful 5 mile walking path directly across from my home. It spans from Sloat Blvd. to the Cliff House/Sutro Baths.\nPopular restaurants include: Thanh Long, Outerlands, Cliff House, Beach Chalet & Brewery, Celia's Mexican Restaurant, Sunset Reservoir Brewery Company, Devils Teeth Bakery, Andy Town Coffee shop, Java Beach Caf\u00e9 and many more. Great choice of shops selling locally made surfboards, jewelry and art... The Last Straw, San Franpsyco apparel, Establish and The General Store just to name a few.",
        "photo_urls": [
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/sf_photos/12/image_5.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/sf_photos/12/image_0.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/sf_photos/12/image_3.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/sf_photos/12/image_4.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/sf_photos/12/image_2.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/sf_photos/12/image_1.jpg"
        ],
        "coordinates": [
            37.792419821471086,
            -122.40337582187954
        ]
    },
    {
        "main_title": "Private cozy room 1",
        "price": 38,
        "cleaning_fee": 66.5,
        "service_fee": 76,
        "description": ".Please text me through the Airbnb app \n.This is a single family dwelling. It\u2019s a quiet and safe neighborhood The house is located in the sunset district.  \nVery convenient transportation to downtown San Francisco and Golden Gate Bridge.  Walking distance to Golden Gate park and the ocean beach \nNearby convenient Chinese ,Japanese restaurants etc\n5 minutes driving to San Francisco Zoo and 10 minutes to the worlds famous Olympic club golf course.\n20 ms  to Golden Gate Bridge \n30 ms to downtownSF\n\n\nPlease be aware that we shared the kitchen,bathroom and living room but you do have your own bedroom.",
        "sub_title": "Private room in home hosted by Jimmy",
        "num_bedrooms": 1,
        "num_baths": 1,
        "min_guests": 3,
        "size": "1 bedroom",
        "city": "San Francisco",
        "state": " California",
        "country": " United States",
        "listing_type": "room",
        "ammenities": [
            "Kitchen",
            "Wifi",
            "Free street parking",
            "TV",
            "Paid washer \u2013 In building",
            "Paid dryer \u2013 In building",
            "Hair dryer",
            "Refrigerator",
            "Microwave",
            "Security cameras on property"
        ],
        "location_desc": "One block to transportation (light rail N line Judah Street \u8f7b\u8f68\u516c\u4ea4\uff09to downtown San Francisco about 40 minutes . 4 blocks transportation to Golden Gate Bridge about 20 minutes.",
        "photo_urls": [
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/sf_photos/10/image_5.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/sf_photos/10/image_0.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/sf_photos/10/image_3.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/sf_photos/10/image_4.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/sf_photos/10/image_2.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/sf_photos/10/image_1.jpg"
        ],
        "coordinates": [
            37.77993869029143,
            -122.39376278538148
        ]
    },
    {
        "main_title": "Private Quiet Room",
        "price": 80,
        "cleaning_fee": 140.0,
        "service_fee": 160,
        "description": "This is a high ceilinged room with a built in fireplace. It has tall bay windows that face on Ashbury Street.  The 4 poster bed was handmade in Vermont and rugs are hand woven.  This is the guestrooom I reserve for friends and rent out only occasionally.  The 1900 victorian building is quiet, secure, and lovely, with long time trusted tenants in the other two rental units.\n\n\nThis room is across the hall from my large first floor flat.  I have had this 1900 Victorian building since 1974 when I first fell in love with the building. \n\nIt has a working built in fireplace. I have also left one bookshelf full of my own books for you to read while staying with me. \n \nThere is one front door for the building. Guest room is directly on the left as you enter. There is hallway that runs between my flat and the guest room.  It also leads to the top two flats.\n\nThe shared bath is small but nice and has its own entrance across the hall from my flat.",
        "sub_title": "Private room in home hosted by Joanna",
        "num_bedrooms": 1,
        "num_baths": 1,
        "min_guests": 2,
        "size": "1 bedroom",
        "city": "San Francisco",
        "state": " California",
        "country": " United States",
        "listing_type": "room",
        "ammenities": [
            "Wifi",
            "Dedicated workspace",
            "Backyard",
            "Indoor fireplace",
            "Hair dryer",
            "Long term stays allowed"
        ],
        "location_desc": "This neighborhood has been the delight of my life. I moved around the corner on Downey Street with my 5 year old daughter in 1961 in order for her to enter kindergarten in a good S.F. public school.\n\nWatching the Haight transform from a quiet old fashioned neighborhood to the center of the Hippie 60's has been fascinating, especially since my husband and I were part of it.\n\nThe changes are amazing, and gentrification has also made possible more paths, parks, transportation improvements, high rises, symphony halls and jazz centers.\n\nWe still have neighborhoods, a wonderful mix of ethnicities, and food that is known world wide.\nCole Street -- three blocks away -- now has Japanese, French, Italian and Spanish restaurants along with Pete's coffee, hamburger and crepes and a cheese shop.\n\nGolden gate park is a 15 minute walk away. And Buena Vista park is 3 blocks away. My house is actually on the slopes of Mt Olympus which is the geographical center of San Francisco. From there you can see Twin Peaks and Corona Heights plus the ocean and the bay.",
        "photo_urls": [
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/sf_photos/19/image_5.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/sf_photos/19/image_0.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/sf_photos/19/image_3.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/sf_photos/19/image_4.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/sf_photos/19/image_2.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/sf_photos/19/image_1.jpg"
        ],
        "coordinates": [
            37.78373751857462,
            -122.40440579007576
        ]
    },
    {
        "main_title": "Views! New Cottage, jacuzzi, sauna, pool!",
        "price": 177,
        "cleaning_fee": 309.75,
        "service_fee": 354,
        "description": "Stunning,  detached  cottage w/ higher end finishes. Endless views of mountains private entrance & sliding glass entry to deck with beautiful pool. 2 minute to parks for hiking. Zoo close. Quiet & set amongst over an acre of land with redwood, pine, & oak trees. Pool heated April -October. Open To use year round as well. Short commute to San Francisco, 5-10 minutes to many restaurants. New Jacuzzi and outdoor sauna. Large patio, pool / deck (4000 sq ft)  is shared with main house (family of 3).\n\n\nThere is a separate guest entrance with space along with the side of the main house specific that is specific for the tiny house. There is a lock code as well which will be given before checkin.",
        "sub_title": "Entire cabin hosted by Laura",
        "num_bedrooms": 1,
        "num_baths": 1,
        "min_guests": 2,
        "size": "1 bedroom",
        "city": "Oakland",
        "state": " California",
        "country": " United States",
        "listing_type": "cabin",
        "ammenities": [
            "Bay view",
            "City skyline view",
            "Kitchen",
            "Wifi",
            "Dedicated workspace",
            "Free parking on premises",
            "Shared outdoor pool - available seasonally, open specific hours, heated, lap pool, pool cover, pool toys",
            "Shared hot tub",
            "TV with Roku, Netflix, Hulu, standard cable",
            "Security cameras on property"
        ],
        "location_desc": "This home is located in the Hillcrest Estates area of the Oakland Hills right on top of the ridgeline. One side of the house has beautiful mountain views stretching to Mt. Diablo and the other half looks out towards San Francisco Bay. This is one of the more exclusive areas of the Oakland Hills where all the homes have one acre of space. Complete property has a gated entrance with an electronic keypad. This is a touch of Tahoe elegance, modern mid-century, very peaceful, and conveniently located for tourists who want to see the Bay Area but also want some peace of mind and tranquility. Running and mountain trails right out the bottom of the driveway. Grocery shopping and restaurants are 2 miles away, San Francisco 19 miles, start of the wine country 45 miles, Yosemite and Lake Tahoe for day trips 3 hours. Oakland International Airport is 10 miles and SFO airport is 29. This cottage is ideal for anyone who really enjoys nature as there are 4 regional parks with trails all within 3 miles of the property. A great place to unwind, relax and get away from everything!",
        "photo_urls": [
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/sf_photos/3/image_5.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/sf_photos/3/image_0.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/sf_photos/3/image_3.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/sf_photos/3/image_4.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/sf_photos/3/image_2.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/sf_photos/3/image_1.jpg"
        ],
        "coordinates": [
            37.76962660080496,
            -122.43461819049826
        ]
    },
    {
        "main_title": "Location! Location!! Location!!!",
        "price": 175,
        "cleaning_fee": 306.25,
        "service_fee": 350,
        "description": "Just a stones-throw away from all the fun and excitement of the downtown square. The best restaurants, cafe's, coffee shops, clothing boutiques and movie theatre are all just outside your front door!  Conveniently, we are just blocks from grocery, parks, live theatre, live music, hiking and biking trails and the Outdoor Art Club (Weddings)  Our bright studio is nestled behind adorable shops, 2 apartments and features hardwood floors, a spacious kitchen, built-in laundry, and a sparkling bathtub.\n\n\nThe apartment is approx. 475 sq. ft, cozy and warm! We have thoughtfully placed many practical and functional amenities within. Our space truly feels both spacious and like a \"home away from home\". You will find a new washer and dryer, range and oven, microwave, large food-prep area, coffee maker, iron/board and dinner/stem-ware at your fingertips. Linens, towels and toiletries are of course provided. There\u2019s  a backyard to relax in (communal) and parks are within walking distance.  We are located on the first floor in arguably the downtown\u2019s best location!",
        "sub_title": "Entire rental unit hosted by Gary",
        "num_bedrooms": 1,
        "num_baths": 1,
        "min_guests": 2,
        "size": "1 bedroom",
        "city": "Mill Valley",
        "state": " California",
        "country": " United States",
        "listing_type": "rental",
        "ammenities": [
            "Kitchen",
            "Wifi",
            "Dedicated workspace",
            "Free street parking",
            "Washer"
        ],
        "location_desc": "Features: Mount Tamalpais - Great restaurants - Bookstores - Coffee houses - Cafe's - Grocery stores - Movie theater - Live music - Comedy - Live theater - Shops that cater to your every need.\n* All the comforts and conveniences of our idyllic mountain town are just out your door- literally!\n* If you want to explore a little further away : Visit the locations that I presented in the photo gallery, they are a big hit with locals and travelers alike.",
        "photo_urls": [
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/sf_photos/24/image_5.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/sf_photos/24/image_0.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/sf_photos/24/image_3.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/sf_photos/24/image_4.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/sf_photos/24/image_2.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/sf_photos/24/image_1.jpg"
        ],
        "coordinates": [
            37.65815134450551,
            -122.41689759162178
        ]
    },
    {
        "main_title": "Garden View Room, Private Entrance, Free Parking",
        "price": 79,
        "cleaning_fee": 138.25,
        "service_fee": 158,
        "description": "Enjoy your own private entrance, upgraded Wi-Fi, microwave and small refrigerator, and access to garden.  You'll have your own key and freedom to relax the way you like to relax.\n\nThe garden room opens to a spacious backyard with view of Mt. Tam. Sleep in comfort on a firm futon and enjoy a private bathroom with a large mirror and new vanity. Hiking trails are close by, a public bus stops at the end of the street,  and the property is just eight miles from the Golden Gate Bridge.\n\n\nThe Garden Room overlooks a spacious garden full of native California landscaping, fruit trees, and vegetables . Behind the garden is a stunning view of Mt. Tamalpais. Mt. Tam offers hours of hiking and days of camping overlooking the Pacific ocean. \n\nFull windows facing the South and West flood the garden room with sunshine.  A standard size, firm futon bed is comfortable for one person or a couple. You'll have plenty of closet and drawer space.",
        "sub_title": "Private room in home hosted by Susan",
        "num_bedrooms": 1,
        "num_baths": 1,
        "min_guests": 2,
        "size": "1 bedroom",
        "city": "Mill Valley",
        "state": " California",
        "country": " United States",
        "listing_type": "room",
        "ammenities": [
            "Wifi",
            "Free street parking",
            "Washer",
            "Dryer",
            "Patio or balcony",
            "Backyard",
            "Luggage dropoff allowed",
            "Hair dryer",
            "Refrigerator",
            "Microwave"
        ],
        "location_desc": "You'll stay in one of Mill Valley's safest, friendliest, most walkable, and most beautiful neighborhoods. There is a park at the end of the street. Whole Foods; a health food store, coffee shops, and great restaurants are within walking distance. If you like photography, bring your camera for flowers, gates or fences, and scenic beauty. Bring a bird book or just a book and enjoy a backyard bench for quiet reading or writing.",
        "photo_urls": [
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/sf_photos/21/image_5.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/sf_photos/21/image_0.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/sf_photos/21/image_3.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/sf_photos/21/image_4.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/sf_photos/21/image_2.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/sf_photos/21/image_1.jpg"
        ],
        "coordinates": [
            37.65244336055151,
            -122.42290573943308
        ]
    },
    {
        "main_title": "Newly Remodeled Private Bedroom",
        "price": 78,
        "cleaning_fee": 136.5,
        "service_fee": 156,
        "description": "Private newly remodeled home in a quiet neighborhood. Cozy spacious private bedroom. Private detached bathroom Shared living room. Shared kitchen.\n\n*All guests 12 years old and up must be vaccinated and must show proof of vaccination prior to entering the home.*\n\n\nNewly remodeled home. Very clean and spacious. Quiet and cozy",
        "sub_title": "Private room in home hosted by Mai",
        "num_bedrooms": 1,
        "num_baths": 1,
        "min_guests": 2,
        "size": "1 bedroom",
        "city": "Daly City",
        "state": " California",
        "country": " United States",
        "listing_type": "room",
        "ammenities": [
            "Kitchen",
            "Wifi",
            "Free parking on premises",
            "TV",
            "Hair dryer",
            "Microwave",
            "Security cameras on property"
        ],
        "location_desc": "Very quiet and safe neighborhood with plenty of street parking. Walking distance to the beach. 5 minutes from Westlake Shopping Center. 5 minutes from the bart station",
        "photo_urls": [
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/sf_photos/26/image_5.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/sf_photos/26/image_0.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/sf_photos/26/image_3.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/sf_photos/26/image_4.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/sf_photos/26/image_2.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/sf_photos/26/image_1.jpg"
        ],
        "coordinates": [
            37.69536293190555, -122.48365156291459
        ]
    }
]

sf_reviews = [
    [
        {
            cleanliness: 2,
            accuracy: 5,
            communication: 3,
            location: 4,
            check_in: 2,
            text: "Nice and comfortable stay. Most of the tourist attractions are very close from the property."
        },
        {
            cleanliness: 5,
            accuracy: 3,
            communication: 3,
            location: 3,
            check_in: 3,
            text: "it was a very convenient location on lombard st. They have their own parking which is a MUST because whew the break ins lately are not it. The rooms were clean and for a hostel it was very quiet. Staff were friendly."
        },
        {
            cleanliness: 4,
            accuracy: 3,
            communication: 4,
            location: 4,
            check_in: 2,
            text: "Great spot for the price!"
        },
        {
            cleanliness: 4,
            accuracy: 4,
            communication: 5,
            location: 5,
            check_in: 2,
            text: "No frills accommodation in good location with free parking. Bed was comfy + clean."
        },
        {
            cleanliness: 5,
            accuracy: 5,
            communication: 5,
            location: 5,
            check_in: 3,
            text: "The hotel offers the minimum of what you expect. Breakfast is served from 9 AM which was to late for me. It is a worn out hotel, but staying for a night won't kill you."
        },
        {
            cleanliness: 4,
            accuracy: 3,
            communication: 4,
            location: 4,
            check_in: 5,
            text: "Nice hostel close to typical sightseeing spots, so pretty good for some days with sightseeing! Bars and Restaurants close, very friendly staff! Unfortunately the rooms are a Bit noisy."
        },
        {
            cleanliness: 3,
            accuracy: 5,
            communication: 4,
            location: 4,
            check_in: 3,
            text: "We had a great 3 night stay here during our first trip to San Francisco - our room was lovely, clean and spacious. The staff were so friendly and helpful; nothing was too much trouble! The location was brilliant as well. Would 100% recommend this accommodation."
        }
    ],
    [
        {
            cleanliness: 2,
            accuracy: 4,
            communication: 3,
            location: 4,
            check_in: 4,
            text: "Nice and comfortable stay. Most of the tourist attractions are very close from the property."
        },
        {
            cleanliness: 4,
            accuracy: 4,
            communication: 5,
            location: 4,
            check_in: 4,
            text: "it was a very convenient location on lombard st. They have their own parking which is a MUST because whew the break ins lately are not it. The rooms were clean and for a hostel it was very quiet. Staff were friendly."
        },
        {
            cleanliness: 4,
            accuracy: 5,
            communication: 4,
            location: 5,
            check_in: 4,
            text: "Great spot for the price!"
        },
        {
            cleanliness: 4,
            accuracy: 3,
            communication: 2,
            location: 5,
            check_in: 2,
            text: "No frills accommodation in good location with free parking. Bed was comfy + clean."
        },
        {
            cleanliness: 3,
            accuracy: 3,
            communication: 3,
            location: 4,
            check_in: 4,
            text: "The hotel offers the minimum of what you expect. Breakfast is served from 9 AM which was to late for me. It is a worn out hotel, but staying for a night won't kill you."
        },
        {
            cleanliness: 5,
            accuracy: 4,
            communication: 5,
            location: 5,
            check_in: 2,
            text: "Nice hostel close to typical sightseeing spots, so pretty good for some days with sightseeing! Bars and Restaurants close, very friendly staff! Unfortunately the rooms are a Bit noisy."
        },
        {
            cleanliness: 2,
            accuracy: 4,
            communication: 5,
            location: 3,
            check_in: 2,
            text: "We had a great 3 night stay here during our first trip to San Francisco - our room was lovely, clean and spacious. The staff were so friendly and helpful; nothing was too much trouble! The location was brilliant as well. Would 100% recommend this accommodation."
        }
    ],
    [
        {
            cleanliness: 2,
            accuracy: 3,
            communication: 2,
            location: 3,
            check_in: 4,
            text: "Nice and comfortable stay. Most of the tourist attractions are very close from the property."
        },
        {
            cleanliness: 2,
            accuracy: 2,
            communication: 2,
            location: 5,
            check_in: 4,
            text: "it was a very convenient location on lombard st. They have their own parking which is a MUST because whew the break ins lately are not it. The rooms were clean and for a hostel it was very quiet. Staff were friendly."
        },
        {
            cleanliness: 4,
            accuracy: 3,
            communication: 3,
            location: 2,
            check_in: 5,
            text: "Great spot for the price!"
        },
        {
            cleanliness: 3,
            accuracy: 4,
            communication: 4,
            location: 4,
            check_in: 3,
            text: "No frills accommodation in good location with free parking. Bed was comfy + clean."
        },
        {
            cleanliness: 3,
            accuracy: 3,
            communication: 3,
            location: 2,
            check_in: 2,
            text: "The hotel offers the minimum of what you expect. Breakfast is served from 9 AM which was to late for me. It is a worn out hotel, but staying for a night won't kill you."
        },
        {
            cleanliness: 4,
            accuracy: 2,
            communication: 2,
            location: 2,
            check_in: 5,
            text: "Nice hostel close to typical sightseeing spots, so pretty good for some days with sightseeing! Bars and Restaurants close, very friendly staff! Unfortunately the rooms are a Bit noisy."
        },
        {
            cleanliness: 5,
            accuracy: 2,
            communication: 3,
            location: 5,
            check_in: 4,
            text: "We had a great 3 night stay here during our first trip to San Francisco - our room was lovely, clean and spacious. The staff were so friendly and helpful; nothing was too much trouble! The location was brilliant as well. Would 100% recommend this accommodation."
        }
    ],
    [
        {
            cleanliness: 5,
            accuracy: 4,
            communication: 5,
            location: 4,
            check_in: 4,
            text: "Nice and comfortable stay. Most of the tourist attractions are very close from the property."
        },
        {
            cleanliness: 3,
            accuracy: 5,
            communication: 2,
            location: 3,
            check_in: 2,
            text: "it was a very convenient location on lombard st. They have their own parking which is a MUST because whew the break ins lately are not it. The rooms were clean and for a hostel it was very quiet. Staff were friendly."
        },
        {
            cleanliness: 2,
            accuracy: 4,
            communication: 2,
            location: 5,
            check_in: 2,
            text: "Great spot for the price!"
        },
        {
            cleanliness: 5,
            accuracy: 5,
            communication: 3,
            location: 2,
            check_in: 5,
            text: "No frills accommodation in good location with free parking. Bed was comfy + clean."
        },
        {
            cleanliness: 4,
            accuracy: 5,
            communication: 2,
            location: 3,
            check_in: 2,
            text: "The hotel offers the minimum of what you expect. Breakfast is served from 9 AM which was to late for me. It is a worn out hotel, but staying for a night won't kill you."
        },
        {
            cleanliness: 5,
            accuracy: 5,
            communication: 4,
            location: 2,
            check_in: 5,
            text: "Nice hostel close to typical sightseeing spots, so pretty good for some days with sightseeing! Bars and Restaurants close, very friendly staff! Unfortunately the rooms are a Bit noisy."
        },
        {
            cleanliness: 2,
            accuracy: 5,
            communication: 2,
            location: 2,
            check_in: 5,
            text: "We had a great 3 night stay here during our first trip to San Francisco - our room was lovely, clean and spacious. The staff were so friendly and helpful; nothing was too much trouble! The location was brilliant as well. Would 100% recommend this accommodation."
        }
    ],
    [
        {
            cleanliness: 4,
            accuracy: 2,
            communication: 4,
            location: 2,
            check_in: 5,
            text: "Nice and comfortable stay. Most of the tourist attractions are very close from the property."
        },
        {
            cleanliness: 4,
            accuracy: 3,
            communication: 5,
            location: 5,
            check_in: 3,
            text: "it was a very convenient location on lombard st. They have their own parking which is a MUST because whew the break ins lately are not it. The rooms were clean and for a hostel it was very quiet. Staff were friendly."
        },
        {
            cleanliness: 3,
            accuracy: 4,
            communication: 4,
            location: 5,
            check_in: 3,
            text: "Great spot for the price!"
        },
        {
            cleanliness: 3,
            accuracy: 5,
            communication: 4,
            location: 5,
            check_in: 3,
            text: "No frills accommodation in good location with free parking. Bed was comfy + clean."
        },
        {
            cleanliness: 2,
            accuracy: 2,
            communication: 4,
            location: 5,
            check_in: 3,
            text: "The hotel offers the minimum of what you expect. Breakfast is served from 9 AM which was to late for me. It is a worn out hotel, but staying for a night won't kill you."
        },
        {
            cleanliness: 5,
            accuracy: 2,
            communication: 5,
            location: 3,
            check_in: 2,
            text: "Nice hostel close to typical sightseeing spots, so pretty good for some days with sightseeing! Bars and Restaurants close, very friendly staff! Unfortunately the rooms are a Bit noisy."
        },
        {
            cleanliness: 3,
            accuracy: 5,
            communication: 3,
            location: 3,
            check_in: 2,
            text: "We had a great 3 night stay here during our first trip to San Francisco - our room was lovely, clean and spacious. The staff were so friendly and helpful; nothing was too much trouble! The location was brilliant as well. Would 100% recommend this accommodation."
        }
    ],
    [],
    [
        {
            cleanliness: 2,
            accuracy: 2,
            communication: 4,
            location: 4,
            check_in: 3,
            text: "Nice and comfortable stay. Most of the tourist attractions are very close from the property."
        },
        {
            cleanliness: 2,
            accuracy: 3,
            communication: 5,
            location: 5,
            check_in: 2,
            text: "it was a very convenient location on lombard st. They have their own parking which is a MUST because whew the break ins lately are not it. The rooms were clean and for a hostel it was very quiet. Staff were friendly."
        },
        {
            cleanliness: 2,
            accuracy: 4,
            communication: 4,
            location: 2,
            check_in: 4,
            text: "Great spot for the price!"
        },
        {
            cleanliness: 2,
            accuracy: 2,
            communication: 3,
            location: 2,
            check_in: 4,
            text: "No frills accommodation in good location with free parking. Bed was comfy + clean."
        },
        {
            cleanliness: 4,
            accuracy: 4,
            communication: 3,
            location: 3,
            check_in: 4,
            text: "The hotel offers the minimum of what you expect. Breakfast is served from 9 AM which was to late for me. It is a worn out hotel, but staying for a night won't kill you."
        },
        {
            cleanliness: 5,
            accuracy: 3,
            communication: 3,
            location: 4,
            check_in: 5,
            text: "Nice hostel close to typical sightseeing spots, so pretty good for some days with sightseeing! Bars and Restaurants close, very friendly staff! Unfortunately the rooms are a Bit noisy."
        },
        {
            cleanliness: 5,
            accuracy: 5,
            communication: 3,
            location: 3,
            check_in: 3,
            text: "We had a great 3 night stay here during our first trip to San Francisco - our room was lovely, clean and spacious. The staff were so friendly and helpful; nothing was too much trouble! The location was brilliant as well. Would 100% recommend this accommodation."
        }
    ],
    [
        {
            cleanliness: 4,
            accuracy: 4,
            communication: 5,
            location: 4,
            check_in: 3,
            text: "Nice and comfortable stay. Most of the tourist attractions are very close from the property."
        },
        {
            cleanliness: 4,
            accuracy: 3,
            communication: 2,
            location: 4,
            check_in: 5,
            text: "it was a very convenient location on lombard st. They have their own parking which is a MUST because whew the break ins lately are not it. The rooms were clean and for a hostel it was very quiet. Staff were friendly."
        },
        {
            cleanliness: 3,
            accuracy: 3,
            communication: 5,
            location: 5,
            check_in: 2,
            text: "Great spot for the price!"
        },
        {
            cleanliness: 4,
            accuracy: 4,
            communication: 5,
            location: 2,
            check_in: 3,
            text: "No frills accommodation in good location with free parking. Bed was comfy + clean."
        },
        {
            cleanliness: 5,
            accuracy: 2,
            communication: 5,
            location: 4,
            check_in: 5,
            text: "The hotel offers the minimum of what you expect. Breakfast is served from 9 AM which was to late for me. It is a worn out hotel, but staying for a night won't kill you."
        },
        {
            cleanliness: 3,
            accuracy: 4,
            communication: 3,
            location: 3,
            check_in: 5,
            text: "Nice hostel close to typical sightseeing spots, so pretty good for some days with sightseeing! Bars and Restaurants close, very friendly staff! Unfortunately the rooms are a Bit noisy."
        },
        {
            cleanliness: 5,
            accuracy: 4,
            communication: 3,
            location: 5,
            check_in: 3,
            text: "We had a great 3 night stay here during our first trip to San Francisco - our room was lovely, clean and spacious. The staff were so friendly and helpful; nothing was too much trouble! The location was brilliant as well. Would 100% recommend this accommodation."
        }
    ],
    [
        {
            cleanliness: 3,
            accuracy: 5,
            communication: 3,
            location: 5,
            check_in: 4,
            text: "Nice and comfortable stay. Most of the tourist attractions are very close from the property."
        },
        {
            cleanliness: 2,
            accuracy: 4,
            communication: 2,
            location: 4,
            check_in: 4,
            text: "it was a very convenient location on lombard st. They have their own parking which is a MUST because whew the break ins lately are not it. The rooms were clean and for a hostel it was very quiet. Staff were friendly."
        },
        {
            cleanliness: 4,
            accuracy: 3,
            communication: 4,
            location: 4,
            check_in: 4,
            text: "Great spot for the price!"
        },
        {
            cleanliness: 3,
            accuracy: 3,
            communication: 4,
            location: 3,
            check_in: 3,
            text: "No frills accommodation in good location with free parking. Bed was comfy + clean."
        },
        {
            cleanliness: 2,
            accuracy: 5,
            communication: 4,
            location: 3,
            check_in: 2,
            text: "The hotel offers the minimum of what you expect. Breakfast is served from 9 AM which was to late for me. It is a worn out hotel, but staying for a night won't kill you."
        },
        {
            cleanliness: 3,
            accuracy: 4,
            communication: 4,
            location: 5,
            check_in: 5,
            text: "Nice hostel close to typical sightseeing spots, so pretty good for some days with sightseeing! Bars and Restaurants close, very friendly staff! Unfortunately the rooms are a Bit noisy."
        },
        {
            cleanliness: 4,
            accuracy: 2,
            communication: 3,
            location: 3,
            check_in: 5,
            text: "We had a great 3 night stay here during our first trip to San Francisco - our room was lovely, clean and spacious. The staff were so friendly and helpful; nothing was too much trouble! The location was brilliant as well. Would 100% recommend this accommodation."
        }
    ],
    [
        {
            cleanliness: 2,
            accuracy: 2,
            communication: 2,
            location: 5,
            check_in: 4,
            text: "Nice and comfortable stay. Most of the tourist attractions are very close from the property."
        },
        {
            cleanliness: 2,
            accuracy: 4,
            communication: 4,
            location: 3,
            check_in: 5,
            text: "it was a very convenient location on lombard st. They have their own parking which is a MUST because whew the break ins lately are not it. The rooms were clean and for a hostel it was very quiet. Staff were friendly."
        },
        {
            cleanliness: 4,
            accuracy: 2,
            communication: 2,
            location: 3,
            check_in: 5,
            text: "Great spot for the price!"
        },
        {
            cleanliness: 5,
            accuracy: 3,
            communication: 2,
            location: 2,
            check_in: 4,
            text: "No frills accommodation in good location with free parking. Bed was comfy + clean."
        },
        {
            cleanliness: 4,
            accuracy: 2,
            communication: 3,
            location: 2,
            check_in: 5,
            text: "The hotel offers the minimum of what you expect. Breakfast is served from 9 AM which was to late for me. It is a worn out hotel, but staying for a night won't kill you."
        },
        {
            cleanliness: 2,
            accuracy: 3,
            communication: 2,
            location: 4,
            check_in: 4,
            text: "Nice hostel close to typical sightseeing spots, so pretty good for some days with sightseeing! Bars and Restaurants close, very friendly staff! Unfortunately the rooms are a Bit noisy."
        },
        {
            cleanliness: 4,
            accuracy: 5,
            communication: 3,
            location: 2,
            check_in: 4,
            text: "We had a great 3 night stay here during our first trip to San Francisco - our room was lovely, clean and spacious. The staff were so friendly and helpful; nothing was too much trouble! The location was brilliant as well. Would 100% recommend this accommodation."
        }
    ],
    [
        {
            cleanliness: 4,
            accuracy: 4,
            communication: 2,
            location: 2,
            check_in: 4,
            text: "Nice and comfortable stay. Most of the tourist attractions are very close from the property."
        },
        {
            cleanliness: 5,
            accuracy: 3,
            communication: 4,
            location: 3,
            check_in: 4,
            text: "it was a very convenient location on lombard st. They have their own parking which is a MUST because whew the break ins lately are not it. The rooms were clean and for a hostel it was very quiet. Staff were friendly."
        },
        {
            cleanliness: 5,
            accuracy: 2,
            communication: 2,
            location: 5,
            check_in: 2,
            text: "Great spot for the price!"
        },
        {
            cleanliness: 4,
            accuracy: 5,
            communication: 3,
            location: 5,
            check_in: 5,
            text: "No frills accommodation in good location with free parking. Bed was comfy + clean."
        },
        {
            cleanliness: 5,
            accuracy: 3,
            communication: 4,
            location: 5,
            check_in: 4,
            text: "The hotel offers the minimum of what you expect. Breakfast is served from 9 AM which was to late for me. It is a worn out hotel, but staying for a night won't kill you."
        },
        {
            cleanliness: 5,
            accuracy: 5,
            communication: 4,
            location: 2,
            check_in: 2,
            text: "Nice hostel close to typical sightseeing spots, so pretty good for some days with sightseeing! Bars and Restaurants close, very friendly staff! Unfortunately the rooms are a Bit noisy."
        },
        {
            cleanliness: 4,
            accuracy: 5,
            communication: 5,
            location: 5,
            check_in: 2,
            text: "We had a great 3 night stay here during our first trip to San Francisco - our room was lovely, clean and spacious. The staff were so friendly and helpful; nothing was too much trouble! The location was brilliant as well. Would 100% recommend this accommodation."
        }
    ],
    [
        {
            cleanliness: 2,
            accuracy: 5,
            communication: 2,
            location: 3,
            check_in: 4,
            text: "Nice and comfortable stay. Most of the tourist attractions are very close from the property."
        },
        {
            cleanliness: 2,
            accuracy: 4,
            communication: 2,
            location: 3,
            check_in: 4,
            text: "it was a very convenient location on lombard st. They have their own parking which is a MUST because whew the break ins lately are not it. The rooms were clean and for a hostel it was very quiet. Staff were friendly."
        },
        {
            cleanliness: 4,
            accuracy: 4,
            communication: 2,
            location: 5,
            check_in: 5,
            text: "Great spot for the price!"
        },
        {
            cleanliness: 2,
            accuracy: 2,
            communication: 4,
            location: 2,
            check_in: 2,
            text: "No frills accommodation in good location with free parking. Bed was comfy + clean."
        },
        {
            cleanliness: 2,
            accuracy: 4,
            communication: 5,
            location: 2,
            check_in: 5,
            text: "The hotel offers the minimum of what you expect. Breakfast is served from 9 AM which was to late for me. It is a worn out hotel, but staying for a night won't kill you."
        },
        {
            cleanliness: 2,
            accuracy: 2,
            communication: 4,
            location: 2,
            check_in: 2,
            text: "Nice hostel close to typical sightseeing spots, so pretty good for some days with sightseeing! Bars and Restaurants close, very friendly staff! Unfortunately the rooms are a Bit noisy."
        },
        {
            cleanliness: 3,
            accuracy: 3,
            communication: 5,
            location: 5,
            check_in: 4,
            text: "We had a great 3 night stay here during our first trip to San Francisco - our room was lovely, clean and spacious. The staff were so friendly and helpful; nothing was too much trouble! The location was brilliant as well. Would 100% recommend this accommodation."
        }
    ],
    [
        {
            cleanliness: 3,
            accuracy: 5,
            communication: 2,
            location: 2,
            check_in: 2,
            text: "Nice and comfortable stay. Most of the tourist attractions are very close from the property."
        },
        {
            cleanliness: 2,
            accuracy: 5,
            communication: 5,
            location: 4,
            check_in: 4,
            text: "it was a very convenient location on lombard st. They have their own parking which is a MUST because whew the break ins lately are not it. The rooms were clean and for a hostel it was very quiet. Staff were friendly."
        },
        {
            cleanliness: 5,
            accuracy: 2,
            communication: 5,
            location: 3,
            check_in: 5,
            text: "Great spot for the price!"
        },
        {
            cleanliness: 4,
            accuracy: 5,
            communication: 5,
            location: 5,
            check_in: 4,
            text: "No frills accommodation in good location with free parking. Bed was comfy + clean."
        },
        {
            cleanliness: 3,
            accuracy: 5,
            communication: 2,
            location: 2,
            check_in: 5,
            text: "The hotel offers the minimum of what you expect. Breakfast is served from 9 AM which was to late for me. It is a worn out hotel, but staying for a night won't kill you."
        },
        {
            cleanliness: 5,
            accuracy: 3,
            communication: 4,
            location: 2,
            check_in: 5,
            text: "Nice hostel close to typical sightseeing spots, so pretty good for some days with sightseeing! Bars and Restaurants close, very friendly staff! Unfortunately the rooms are a Bit noisy."
        },
        {
            cleanliness: 5,
            accuracy: 5,
            communication: 4,
            location: 5,
            check_in: 4,
            text: "We had a great 3 night stay here during our first trip to San Francisco - our room was lovely, clean and spacious. The staff were so friendly and helpful; nothing was too much trouble! The location was brilliant as well. Would 100% recommend this accommodation."
        }
    ],
    [
        {
            cleanliness: 3,
            accuracy: 3,
            communication: 3,
            location: 3,
            check_in: 2,
            text: "Nice and comfortable stay. Most of the tourist attractions are very close from the property."
        },
        {
            cleanliness: 4,
            accuracy: 4,
            communication: 3,
            location: 4,
            check_in: 3,
            text: "it was a very convenient location on lombard st. They have their own parking which is a MUST because whew the break ins lately are not it. The rooms were clean and for a hostel it was very quiet. Staff were friendly."
        },
        {
            cleanliness: 2,
            accuracy: 3,
            communication: 5,
            location: 4,
            check_in: 2,
            text: "Great spot for the price!"
        },
        {
            cleanliness: 2,
            accuracy: 2,
            communication: 4,
            location: 2,
            check_in: 3,
            text: "No frills accommodation in good location with free parking. Bed was comfy + clean."
        },
        {
            cleanliness: 2,
            accuracy: 2,
            communication: 2,
            location: 4,
            check_in: 2,
            text: "The hotel offers the minimum of what you expect. Breakfast is served from 9 AM which was to late for me. It is a worn out hotel, but staying for a night won't kill you."
        },
        {
            cleanliness: 4,
            accuracy: 4,
            communication: 5,
            location: 2,
            check_in: 4,
            text: "Nice hostel close to typical sightseeing spots, so pretty good for some days with sightseeing! Bars and Restaurants close, very friendly staff! Unfortunately the rooms are a Bit noisy."
        },
        {
            cleanliness: 2,
            accuracy: 2,
            communication: 2,
            location: 5,
            check_in: 2,
            text: "We had a great 3 night stay here during our first trip to San Francisco - our room was lovely, clean and spacious. The staff were so friendly and helpful; nothing was too much trouble! The location was brilliant as well. Would 100% recommend this accommodation."
        }
    ],
    [
        {
            cleanliness: 2,
            accuracy: 4,
            communication: 2,
            location: 4,
            check_in: 2,
            text: "Nice and comfortable stay. Most of the tourist attractions are very close from the property."
        },
        {
            cleanliness: 5,
            accuracy: 4,
            communication: 4,
            location: 5,
            check_in: 4,
            text: "it was a very convenient location on lombard st. They have their own parking which is a MUST because whew the break ins lately are not it. The rooms were clean and for a hostel it was very quiet. Staff were friendly."
        },
        {
            cleanliness: 5,
            accuracy: 4,
            communication: 3,
            location: 4,
            check_in: 4,
            text: "Great spot for the price!"
        },
        {
            cleanliness: 2,
            accuracy: 5,
            communication: 3,
            location: 3,
            check_in: 3,
            text: "No frills accommodation in good location with free parking. Bed was comfy + clean."
        },
        {
            cleanliness: 3,
            accuracy: 4,
            communication: 5,
            location: 3,
            check_in: 5,
            text: "The hotel offers the minimum of what you expect. Breakfast is served from 9 AM which was to late for me. It is a worn out hotel, but staying for a night won't kill you."
        },
        {
            cleanliness: 4,
            accuracy: 3,
            communication: 2,
            location: 4,
            check_in: 2,
            text: "Nice hostel close to typical sightseeing spots, so pretty good for some days with sightseeing! Bars and Restaurants close, very friendly staff! Unfortunately the rooms are a Bit noisy."
        },
        {
            cleanliness: 5,
            accuracy: 5,
            communication: 3,
            location: 2,
            check_in: 3,
            text: "We had a great 3 night stay here during our first trip to San Francisco - our room was lovely, clean and spacious. The staff were so friendly and helpful; nothing was too much trouble! The location was brilliant as well. Would 100% recommend this accommodation."
        }
    ],
    [
        {
            cleanliness: 4,
            accuracy: 4,
            communication: 4,
            location: 2,
            check_in: 2,
            text: "Nice and comfortable stay. Most of the tourist attractions are very close from the property."
        },
        {
            cleanliness: 5,
            accuracy: 4,
            communication: 4,
            location: 4,
            check_in: 4,
            text: "it was a very convenient location on lombard st. They have their own parking which is a MUST because whew the break ins lately are not it. The rooms were clean and for a hostel it was very quiet. Staff were friendly."
        },
        {
            cleanliness: 5,
            accuracy: 4,
            communication: 4,
            location: 5,
            check_in: 2,
            text: "Great spot for the price!"
        },
        {
            cleanliness: 4,
            accuracy: 5,
            communication: 5,
            location: 5,
            check_in: 3,
            text: "No frills accommodation in good location with free parking. Bed was comfy + clean."
        },
        {
            cleanliness: 5,
            accuracy: 3,
            communication: 3,
            location: 4,
            check_in: 4,
            text: "The hotel offers the minimum of what you expect. Breakfast is served from 9 AM which was to late for me. It is a worn out hotel, but staying for a night won't kill you."
        },
        {
            cleanliness: 2,
            accuracy: 2,
            communication: 5,
            location: 5,
            check_in: 4,
            text: "Nice hostel close to typical sightseeing spots, so pretty good for some days with sightseeing! Bars and Restaurants close, very friendly staff! Unfortunately the rooms are a Bit noisy."
        },
        {
            cleanliness: 2,
            accuracy: 5,
            communication: 2,
            location: 2,
            check_in: 5,
            text: "We had a great 3 night stay here during our first trip to San Francisco - our room was lovely, clean and spacious. The staff were so friendly and helpful; nothing was too much trouble! The location was brilliant as well. Would 100% recommend this accommodation."
        }
    ],
    [
        {
            cleanliness: 2,
            accuracy: 5,
            communication: 5,
            location: 4,
            check_in: 5,
            text: "Nice and comfortable stay. Most of the tourist attractions are very close from the property."
        },
        {
            cleanliness: 4,
            accuracy: 2,
            communication: 5,
            location: 5,
            check_in: 4,
            text: "it was a very convenient location on lombard st. They have their own parking which is a MUST because whew the break ins lately are not it. The rooms were clean and for a hostel it was very quiet. Staff were friendly."
        },
        {
            cleanliness: 3,
            accuracy: 3,
            communication: 5,
            location: 3,
            check_in: 3,
            text: "Great spot for the price!"
        },
        {
            cleanliness: 2,
            accuracy: 5,
            communication: 4,
            location: 5,
            check_in: 2,
            text: "No frills accommodation in good location with free parking. Bed was comfy + clean."
        },
        {
            cleanliness: 2,
            accuracy: 3,
            communication: 3,
            location: 3,
            check_in: 3,
            text: "The hotel offers the minimum of what you expect. Breakfast is served from 9 AM which was to late for me. It is a worn out hotel, but staying for a night won't kill you."
        },
        {
            cleanliness: 3,
            accuracy: 2,
            communication: 5,
            location: 3,
            check_in: 5,
            text: "Nice hostel close to typical sightseeing spots, so pretty good for some days with sightseeing! Bars and Restaurants close, very friendly staff! Unfortunately the rooms are a Bit noisy."
        },
        {
            cleanliness: 2,
            accuracy: 4,
            communication: 2,
            location: 3,
            check_in: 3,
            text: "We had a great 3 night stay here during our first trip to San Francisco - our room was lovely, clean and spacious. The staff were so friendly and helpful; nothing was too much trouble! The location was brilliant as well. Would 100% recommend this accommodation."
        }
    ],
    [
        {
            cleanliness: 2,
            accuracy: 5,
            communication: 5,
            location: 4,
            check_in: 2,
            text: "Nice and comfortable stay. Most of the tourist attractions are very close from the property."
        },
        {
            cleanliness: 4,
            accuracy: 4,
            communication: 2,
            location: 3,
            check_in: 5,
            text: "it was a very convenient location on lombard st. They have their own parking which is a MUST because whew the break ins lately are not it. The rooms were clean and for a hostel it was very quiet. Staff were friendly."
        },
        {
            cleanliness: 2,
            accuracy: 5,
            communication: 5,
            location: 2,
            check_in: 3,
            text: "Great spot for the price!"
        },
        {
            cleanliness: 4,
            accuracy: 5,
            communication: 4,
            location: 2,
            check_in: 5,
            text: "No frills accommodation in good location with free parking. Bed was comfy + clean."
        },
        {
            cleanliness: 5,
            accuracy: 3,
            communication: 3,
            location: 5,
            check_in: 5,
            text: "The hotel offers the minimum of what you expect. Breakfast is served from 9 AM which was to late for me. It is a worn out hotel, but staying for a night won't kill you."
        },
        {
            cleanliness: 5,
            accuracy: 2,
            communication: 3,
            location: 5,
            check_in: 5,
            text: "Nice hostel close to typical sightseeing spots, so pretty good for some days with sightseeing! Bars and Restaurants close, very friendly staff! Unfortunately the rooms are a Bit noisy."
        },
        {
            cleanliness: 3,
            accuracy: 5,
            communication: 4,
            location: 2,
            check_in: 3,
            text: "We had a great 3 night stay here during our first trip to San Francisco - our room was lovely, clean and spacious. The staff were so friendly and helpful; nothing was too much trouble! The location was brilliant as well. Would 100% recommend this accommodation."
        }
    ],
    [
        {
            cleanliness: 4,
            accuracy: 3,
            communication: 3,
            location: 3,
            check_in: 2,
            text: "Nice and comfortable stay. Most of the tourist attractions are very close from the property."
        },
        {
            cleanliness: 4,
            accuracy: 2,
            communication: 3,
            location: 3,
            check_in: 5,
            text: "it was a very convenient location on lombard st. They have their own parking which is a MUST because whew the break ins lately are not it. The rooms were clean and for a hostel it was very quiet. Staff were friendly."
        },
        {
            cleanliness: 4,
            accuracy: 5,
            communication: 4,
            location: 2,
            check_in: 3,
            text: "Great spot for the price!"
        },
        {
            cleanliness: 3,
            accuracy: 2,
            communication: 4,
            location: 2,
            check_in: 2,
            text: "No frills accommodation in good location with free parking. Bed was comfy + clean."
        },
        {
            cleanliness: 3,
            accuracy: 3,
            communication: 4,
            location: 3,
            check_in: 2,
            text: "The hotel offers the minimum of what you expect. Breakfast is served from 9 AM which was to late for me. It is a worn out hotel, but staying for a night won't kill you."
        },
        {
            cleanliness: 5,
            accuracy: 3,
            communication: 4,
            location: 5,
            check_in: 4,
            text: "Nice hostel close to typical sightseeing spots, so pretty good for some days with sightseeing! Bars and Restaurants close, very friendly staff! Unfortunately the rooms are a Bit noisy."
        },
        {
            cleanliness: 5,
            accuracy: 5,
            communication: 4,
            location: 5,
            check_in: 2,
            text: "We had a great 3 night stay here during our first trip to San Francisco - our room was lovely, clean and spacious. The staff were so friendly and helpful; nothing was too much trouble! The location was brilliant as well. Would 100% recommend this accommodation."
        }
    ],
    [
        {
            cleanliness: 3,
            accuracy: 4,
            communication: 3,
            location: 2,
            check_in: 2,
            text: "Nice and comfortable stay. Most of the tourist attractions are very close from the property."
        },
        {
            cleanliness: 4,
            accuracy: 2,
            communication: 5,
            location: 2,
            check_in: 2,
            text: "it was a very convenient location on lombard st. They have their own parking which is a MUST because whew the break ins lately are not it. The rooms were clean and for a hostel it was very quiet. Staff were friendly."
        },
        {
            cleanliness: 2,
            accuracy: 2,
            communication: 2,
            location: 5,
            check_in: 4,
            text: "Great spot for the price!"
        },
        {
            cleanliness: 4,
            accuracy: 5,
            communication: 5,
            location: 4,
            check_in: 3,
            text: "No frills accommodation in good location with free parking. Bed was comfy + clean."
        },
        {
            cleanliness: 5,
            accuracy: 2,
            communication: 2,
            location: 4,
            check_in: 3,
            text: "The hotel offers the minimum of what you expect. Breakfast is served from 9 AM which was to late for me. It is a worn out hotel, but staying for a night won't kill you."
        },
        {
            cleanliness: 5,
            accuracy: 2,
            communication: 5,
            location: 5,
            check_in: 5,
            text: "Nice hostel close to typical sightseeing spots, so pretty good for some days with sightseeing! Bars and Restaurants close, very friendly staff! Unfortunately the rooms are a Bit noisy."
        },
        {
            cleanliness: 5,
            accuracy: 2,
            communication: 5,
            location: 2,
            check_in: 5,
            text: "We had a great 3 night stay here during our first trip to San Francisco - our room was lovely, clean and spacious. The staff were so friendly and helpful; nothing was too much trouble! The location was brilliant as well. Would 100% recommend this accommodation."
        }
    ],
    [  {
        cleanliness: 5,
        accuracy: 2,
        communication: 5,
        location: 2,
        check_in: 5,
        text: "Awesome Stay"

    }],
    [{
        cleanliness: 1,
        accuracy: 1,
        communication: 1,
        location: 1,
        check_in: 1,
        text:"stay away! WORST STAY EVER"
    }],    
    [{
        cleanliness: 1,
        accuracy: 1,
        communication: 1,
        location: 1,
        check_in: 1,
        text:"stay away! WORST STAY EVER"
    }]

]
listings = []
users = []
puts "creating SF listings...."
sf_listing_objects.each do |listing|
    u =    User.create!({
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name,
        email: Faker::Internet.unique.email,
        password: 'password'
      })
    listing["user_id"] = u.id
    l = Listing.create!(listing)
    users.push(u.id)
    listings.push(l)
end

puts "CREATING REVIEWS"
sf_reviews.each_with_index do |review_array,i|
    listing_id = listings[i].id
    review_array.each do |review|
        u =    User.create!({
            first_name: Faker::Name.first_name,
            last_name: Faker::Name.last_name,
            email: Faker::Internet.unique.email,
            password: 'password'
          })
         review["user_id"] = u.id
         review["listing_id"] = listing_id
      
        Review.create!(review)
    end

end


puts "DONE"