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

puts "CREATING SF REVIEWS"
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

puts "SF REVIEWS AND LISTINGS COMPLETE"

ny_listing_objects = [
    {
        "main_title": "Individual Cubicle Room in NYC/Boys Floor",
        "price": 82,
        "cleaning_fee": 143.5,
        "service_fee": 164,
        "description": "This cubicle room is just for you and nobody else. Its door has a lock. Access to communal bathroom/shower/sink, and common lounge area. Peace and quiet strictly observed. Friendly staff on-site 24/7.Complimentary breakfast any time of day. Free WiFi everywhere. Fresh, clean sheets, pillows towels, blankets, shampoo, shower gel, hand soap provided. Basic yet safe, quiet and clean. Midtown Manhattan,within walking distance of Penn Station,FIT,Madison Square Garden,High Line Park,Theater District\n\n\nGreat fit for solo travelers on budget: central location, individual sleeping cubicle with door and lock. Basic accommodation yet safe, quiet, and very clean. Friendly helpful staff on-site 24 hrs. Breakfast 24 hrs. Free WiFi. Good price.",
        "sub_title": "Private room in hostel hosted by Alex And Zeena",
        "num_bedrooms": 1,
        "num_baths": 1,
        "min_guests": 1,
        "size": "1 bedroom",
        "city": "New York City",
        "state": "NY",
        "country": "United States",
        "listing_type": "room",
        "ammenities": [
            "Wifi",
            "Air conditioning",
            "Luggage dropoff allowed",
            "Hair dryer",
            "Refrigerator",
            "Microwave",
            "Breakfast",
            "Long term stays allowed",
            "Security cameras on property"
        ],
        "location_desc": "This neighborhood is called: Chelsea. \n     There are literally hundreds of small unique restaurants, shops, book stores, galleries, theaters and pubs in Chelsea.  You will find, gently-strolling, pedestrian traffic at all hours of the day of evening.\n   Chelsea is not a dark, or dangerous area.   It's a neighborhood that's full of life.\n      Many artists, musicians, writers, actors, FIT students, other graduate students, similar intelligentsia, and creative people live in Chelsea.  I think you'll like it here.\n     You can get anywhere in New York City quickly and easily from here.\n       The subway station is two blocks away (a two minute walk).\nMidtown Manhattan is very central and safe. Police station 2 blocks away. We're located within walking distance of Theater District, Penn Station, FIT, Madison Square Garden, High Line Park  ",
        "photo_urls": [
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/ny_photos/12171671/image_5.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/ny_photos/12171671/image_0.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/ny_photos/12171671/image_3.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/ny_photos/12171671/image_4.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/ny_photos/12171671/image_2.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/ny_photos/12171671/image_1.jpg"
        ],
        "coordinates": [
            40.77570572820308,
            -73.95885235100303
        ]
    },
    {
        "main_title": "Staypineapple New York, Cosmo King",
        "price": 110,
        "cleaning_fee": 192.5,
        "service_fee": 220,
        "description": "It\u2019s no secret. Manhattan has the best, if not the most options for dining, shopping, and entertainment on the planet. Booking a room in the hip and cozy Staypineapple in Midtown puts you right in the heart of the action so you can get the most out of your NYC vacay. \n\nAn amenity fee with tax ($28.69 per day) will be charged upon arrival.\n\nDaily pet fees apply.\n\n\nThe rooms feature plush ambience with modern furniture to provide a peaceful night\u2019s rest in the city that never sleeps. Enjoy the signature Naked Experience that includes duvet beds with luxury towels and robes to provide maximum comfort. Free high-speed Wi-Fi, high-def televisions with premium channels, and complimentary Kuerig coffee and tea are all standard.\n\nMidtown Manhattan is the home for some of New York\u2019s top attractions. The Theater District, Central Park, Times Square, and Madison Square Garden are the most notable. With subway stops spread all over the city, you\u2019ll have direct access to all of the destinations on your list. \n\nYour room will have: \n\nPrivate bathroom\nDaily housekeeping\nBlackout drapes/curtains\nAir conditioning\nDaily housekeeping \n \nThe space offers:\n\n24-hour front desk\nLaundry service\nConcierge services\nLuggage storage\nElevator",
        "sub_title": "Room in boutique hotel hosted by An Artful Hotel",
        "num_bedrooms": 1,
        "num_baths": 1,
        "min_guests": 2,
        "size": "1 bedroom",
        "city": "New York City",
        "state": "NY",
        "country": "United States",
        "listing_type": "in",
        "ammenities": [
            "Wifi",
            "Pets allowed",
            "TV with standard cable",
            "Elevator",
            "Air conditioning",
            "Luggage dropoff allowed",
            "Pack \u2019n play/Travel crib",
            "Hair dryer",
            "Long term stays allowed",
            "Paid parking off premises"
        ],
        "location_desc": "Purposefully located in Midtown just steps from everything you want to see: Times Square, Hudson Yards, Hell\u2019s Kitchen, and Madison Square Garden to name a few.",
        "photo_urls": [
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/ny_photos/36238749/image_5.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/ny_photos/36238749/image_0.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/ny_photos/36238749/image_3.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/ny_photos/36238749/image_4.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/ny_photos/36238749/image_2.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/ny_photos/36238749/image_1.jpg"
        ],
        "coordinates": [
            40.74554019141643,
            -73.98065334536037
        ]
    },
    {
        "main_title": "Arlo Midtown - Accessible King Room",
        "price": 154,
        "cleaning_fee": 269.5,
        "service_fee": 308,
        "description": "Ideal for travelers who want a little more walk-around space, Accessible King rooms are comfortably-outfitted home bases for urban explorers. The rooms are efficiently designed and offer all the modern amenities an on-the-go traveler needs, including 55\u201d LED TVs, high-speed WiFi and bedside wireless charging stations. Wheelchair accessible.\n\n\nADA Accessible with King Bed - 250 sq ft",
        "sub_title": "Room in hotel hosted by Arlo",
        "num_bedrooms": 1,
        "num_baths": 1,
        "min_guests": 2,
        "size": "1 bedroom",
        "city": "New York City",
        "state": "NY",
        "country": "United States",
        "listing_type": "in",
        "ammenities": [
            "Kitchen",
            "Wifi",
            "Dedicated workspace",
            "Free street parking",
            "Hair dryer",
            "Refrigerator",
            "Microwave"
        ],
        "location_desc": "Nestled between the buzzing glamour of Times Square and the up-and-coming Hudson Yards neighborhood.",
        "photo_urls": [
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/ny_photos/49565858/image_0.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/ny_photos/49565858/image_3.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/ny_photos/49565858/image_2.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/ny_photos/49565858/image_1.jpg"
        ],
        "coordinates": [
            40.774665764956886,
            -73.9533591881331
        ]
    },
    {
        "main_title": "Staypineapple New York, Fashionista King",
        "price": 110,
        "cleaning_fee": 192.5,
        "service_fee": 220,
        "description": "It\u2019s no secret. Manhattan has the best, if not the most options for dining, shopping, and entertainment on the planet. Booking a room in the hip and cozy Staypineapple in Midtown puts you right in the heart of the action so you can get the most out of your NYC vacay. \n\nAn amenity fee with tax ($28.69 per day) will be charged upon arrival.\n\nDaily pet fees apply.\n\n\nThe rooms feature plush ambience with modern furniture to provide a peaceful night\u2019s rest in the city that never sleeps. Enjoy the signature Naked Experience that includes duvet beds with luxury towels and robes to provide maximum comfort. Free high-speed Wi-Fi, high-def televisions with premium channels, and complimentary Kuerig coffee and tea are all standard.\n\nMidtown Manhattan is the home for some of New York\u2019s top attractions. The Theater District, Central Park, Times Square, and Madison Square Garden are the most notable. With subway stops spread all over the city, you\u2019ll have direct access to all of the destinations on your list. \n\nYour room will have: \n\nPrivate bathroom\nDaily housekeeping\nBlackout drapes/curtains\nAir conditioning\nDaily housekeeping \n \nThe space offers:\n\n24-hour front desk\nLaundry service\nConcierge services\nLuggage storage\nElevator",
        "sub_title": "Room in boutique hotel hosted by An Artful Hotel",
        "num_bedrooms": 1,
        "num_baths": 1,
        "min_guests": 2,
        "size": "1 bedroom",
        "city": "New York City",
        "state": "NY",
        "country": "United States",
        "listing_type": "in",
        "ammenities": [
            "Wifi",
            "Pets allowed",
            "TV",
            "Elevator",
            "Air conditioning",
            "Hair dryer",
            "Long term stays allowed"
        ],
        "location_desc": "Purposefully located in Midtown just steps from everything you want to see: Times Square, Hudson Yards, Hell\u2019s Kitchen, and Madison Square Garden to name a few.",
        "photo_urls": [
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/ny_photos/36239568/image_6.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/ny_photos/36239568/image_5.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/ny_photos/36239568/image_7.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/ny_photos/36239568/image_4.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/ny_photos/36239568/image_8.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/ny_photos/36239568/image_9.jpg"
        ],
        "coordinates": [
            40.71731262305544,
            -73.99112468869913
        ]
    },
    {
        "main_title": "138 Bowery-Classic King Studio",
        "price": 145,
        "cleaning_fee": 253.75,
        "service_fee": 290,
        "description": "Located in Bowery \u2013 historically the most unique streetscape of New York with over 400 years of history and culture \u2013 this place is right around the corner of Grand St subway. Super convenient as you can be anywhere in Manhattan in just a few minutes. Steps away from SoHo, NoHo and major subway lines (6,J,Z,N,Q,B,D). Its unbeatable location puts the best of downtown\n\n\nModern unit in an elevator building. This unit is illuminated by floor to ceiling industrial style windows, flooding the home with brilliant light. The room has a   hot plate, mini fridge, microwave, closet, spacious bathroom, smart TV and heat/air conditioning.",
        "sub_title": "Entire rental unit hosted by Jeniffer",
        "num_bedrooms": 1,
        "num_baths": 1,
        "min_guests": 2,
        "size": "Studio",
        "city": "New York City",
        "state": "NY",
        "country": "United States",
        "listing_type": "rental",
        "ammenities": [
            "Kitchen",
            "Wifi",
            "Free street parking",
            "TV",
            "Elevator",
            "Paid washer \u2013 In building",
            "Paid dryer \u2013 In building",
            "Air conditioning",
            "Hair dryer",
            "Security cameras on property"
        ],
        "location_desc": "This new building is situated on the dynamic Bowery just steps from Soho, Nolita, Noho, and the East Village. Its unbeatable location puts the best of downtown's galleries, boutiques, restaurants, wellness and nightlife at your doorstep.",
        "photo_urls": [
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/ny_photos/43267312/image_6.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/ny_photos/43267312/image_5.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/ny_photos/43267312/image_0.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/ny_photos/43267312/image_3.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/ny_photos/43267312/image_4.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/ny_photos/43267312/image_2.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/ny_photos/43267312/image_1.jpg"
        ],
        "coordinates": [
            40.723297347388524,
            -73.9962745296854
        ]
    },
    {
        "main_title": "Clean, quiet, safe bedroom by Central Park",
        "price": 82,
        "cleaning_fee": 143.5,
        "service_fee": 164,
        "description": "Furnished hardwood floor private room (with door lock, key) with brand new furniture\u2019s: bed with linens, desk, closet, air conditioning and window blinds. Kitchen will have everything you will need (or just ask) \u2013 gas stove, coffee and espresso machine, toaster, microwave (no dishwasher sorry).\nShared bathroom has a window and a washing machine.\nBuilding with renovated lobby, elevator.\nSubways C, D and 1, 2, 3 few minutes away.\nNeighborhood: by Central Park, Wholefoods, Starbucks, restaurants.",
        "sub_title": "Private room in rental unit hosted by Henry",
        "num_bedrooms": 1,
        "num_baths": 1,
        "min_guests": 2,
        "size": "1 bedroom",
        "city": "New York City",
        "state": "NY",
        "country": "United States",
        "listing_type": "room",
        "ammenities": [
            "Kitchen",
            "Wifi",
            "Dedicated workspace",
            "Free street parking",
            "Hair dryer",
            "Refrigerator",
            "Microwave"
        ],
        "location_desc": "The Upper West Side is home to Lincoln Center, home to performing arts institutions like the Metropolitan Opera and the New York City Ballet. Amid the majestic buildings of Central Park West, the American Museum of Natural History presents a collection ranging from dinosaurs to life in space. On weekends, families come out of their beautiful typical red sandstone houses (brownstones) located in quiet little streets to go for brunch or buy bagels.",
        "photo_urls": [
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/ny_photos/53050522/image_5.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/ny_photos/53050522/image_0.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/ny_photos/53050522/image_3.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/ny_photos/53050522/image_4.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/ny_photos/53050522/image_2.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/ny_photos/53050522/image_1.jpg"
        ],
        "coordinates": [
            40.718873907054004,
            -74.0100074422483
        ]
    },
    {
        "main_title": "Clean, quiet, safe room by Central Park",
        "price": 70,
        "cleaning_fee": 122.5,
        "service_fee": 140,
        "description": "Furnished hardwood floor room (separated from rest of the apartment by a thick curtain - no wall) with brand new furniture\u2019s: bed with linens, desk, closet, air conditioning and window blinds. Kitchen will have everything you will need (or just ask) \u2013 gas stove, coffee and espresso machine, toaster, microwave (no dishwasher sorry).\nShared bathroom has a window and a washing machine.\nBuilding with renovated lobby, elevator.\nSubways C, D and 1, 2, 3 & Central Park and Wholefoods near by.",
        "sub_title": "Private room in rental unit hosted by Henry",
        "num_bedrooms": 1,
        "num_baths": 1,
        "min_guests": 1,
        "size": "1 bedroom",
        "city": "New York City",
        "state": "NY",
        "country": "United States",
        "listing_type": "room",
        "ammenities": [
            "Kitchen",
            "Wifi",
            "Dedicated workspace",
            "Free street parking",
            "Hair dryer",
            "Refrigerator",
            "Microwave"
        ],
        "location_desc": "The Upper West Side is home to Lincoln Center, which hosts performing-arts institutions like the Metropolitan Opera and New York City Ballet. Amid the grand apartment buildings of Central Park West, the American Museum of Natural History presents everything from dinosaurs to outer-space exhibits. On weekends, families emerge from stately brownstones on quiet side streets to line up for brunch or bagels.",
        "photo_urls": [
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/ny_photos/53346269/image_5.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/ny_photos/53346269/image_0.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/ny_photos/53346269/image_3.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/ny_photos/53346269/image_4.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/ny_photos/53346269/image_2.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/ny_photos/53346269/image_1.jpg"
        ],
        "coordinates": [
            40.76140480921615,
            -73.99936443754335
        ]
    },
    {
        "main_title": "Staypineapple New York, Persona Queen",
        "price": 110,
        "cleaning_fee": 192.5,
        "service_fee": 220,
        "description": "It\u2019s no secret. Manhattan has the best, if not the most options for dining, shopping, and entertainment on the planet. Booking a room in the hip and cozy Staypineapple in Midtown puts you right in the heart of the action so you can get the most out of your NYC vacay. \n\nAn amenity fee with tax ($28.69 per day) will be charged upon arrival.\n\nDaily pet fees apply.\n\n\nThe rooms feature plush ambience with modern furniture to provide a peaceful night\u2019s rest in the city that never sleeps. Enjoy the signature Naked Experience that includes duvet beds with luxury towels and robes to provide maximum comfort. Free high-speed Wi-Fi, high-def televisions with premium channels, and complimentary Kuerig coffee and tea are all standard.\n\nMidtown Manhattan is the home for some of New York\u2019s top attractions. The Theater District, Central Park, Times Square, and Madison Square Garden are the most notable. With subway stops spread all over the city, you\u2019ll have direct access to all of the destinations on your list. \n\nYour room will have: \n\nPrivate bathroom\nDaily housekeeping\nBlackout drapes/curtains\nAir conditioning\nDaily housekeeping \n \nThe space offers:\n\n24-hour front desk\nLaundry service\nConcierge services\nLuggage storage\nElevator",
        "sub_title": "Room in boutique hotel hosted by An Artful Hotel",
        "num_bedrooms": 1,
        "num_baths": 1,
        "min_guests": 1,
        "size": "1 bedroom",
        "city": "New York City",
        "state": "NY",
        "country": "United States",
        "listing_type": "in",
        "ammenities": [
            "Wifi",
            "Pets allowed",
            "TV",
            "Elevator",
            "Air conditioning",
            "Hair dryer",
            "Long term stays allowed"
        ],
        "location_desc": "Purposefully located in Midtown just steps from everything you want to see: Times Square, Hudson Yards, Hell\u2019s Kitchen, and Madison Square Garden to name a few.",
        "photo_urls": [
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/ny_photos/36239907/image_5.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/ny_photos/36239907/image_0.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/ny_photos/36239907/image_3.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/ny_photos/36239907/image_4.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/ny_photos/36239907/image_2.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/ny_photos/36239907/image_1.jpg"
        ],
        "coordinates": [
            40.70820440112594,
            -73.96417385648208
        ]
    },
    {
        "main_title": "Cozy, quiet room in artist's apartment",
        "price": 54,
        "cleaning_fee": 94.5,
        "service_fee": 108,
        "description": "Quiet room available in an artist's apartment. The room is fully furnished, the bed is very comfy. I provide fresh towels and sheets. Interior and mattresses are being exchanged frequently. Located in Brooklyn, you will get to experience staying in a new, exciting neighborhood with artists and young families. The Subway is on the same block! Short ride into Manhattan. This is the perfect place for a city vacation or business trip...\n\n\nYou will receive your own key and have full access to the bedroom, bathroom, hallway and kitchen.",
        "sub_title": "Private room in rental unit hosted by Deycke",
        "num_bedrooms": 1,
        "num_baths": 1,
        "min_guests": 1,
        "size": "1 bedroom",
        "city": "New York City",
        "state": "NY",
        "country": "United States",
        "listing_type": "room",
        "ammenities": [
            "Kitchen",
            "Wifi",
            "Dedicated workspace",
            "Free street parking",
            "Hair dryer",
            "Refrigerator",
            "Microwave"
        ],
        "location_desc": "A fresh new neighborhood! Cafe's..Restaurants..Supermarkets..parks! Safe. Authentic Brooklyn with a new vibe of artists and young families.",
        "photo_urls": [
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/ny_photos/43819542/image_5.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/ny_photos/43819542/image_0.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/ny_photos/43819542/image_3.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/ny_photos/43819542/image_4.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/ny_photos/43819542/image_2.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/ny_photos/43819542/image_1.jpg"
        ],
        "coordinates": [
            40.69388896419372,
            -73.99593120923076
        ]
    },
    {
        "main_title": "My Casa Ur Home Away From Home",
        "price": 104,
        "cleaning_fee": 182.0,
        "service_fee": 208,
        "description": "Bright and sunny room, large window faces east . located right across the hallway from the bathroom in a 3 bedroom apt. Furnished w: Queen size bed, Flat TV  w Cable service(turns on to NY1, our local news channel), Small closet, dresser and a bedside table that works as a laptop desk.This room is Perfect for re-charging after a day of adventures or a night of partying but definitely not a place to bring the party back to.\n\n\nThis is a great real bedroom in a 3 bedroom very charming true EV apartment located  in the vibrant  Alphabet City area(East of Tompkins sq Park) .Near trendy bars and Michelin rated restaurants, Community Gardens and Tompkins Sq Park. Close to buses ( M9 stops right outside)and a 12 minute walk to trains (F,N,R,6,L,etc.)  And a average of 30 minutes away from most places that you would like to visit in NYC. Perfect location if you want to be in the East Village.\nA large dog ( true gentle giant) lives in this house :)",
        "sub_title": "Private room in rental unit hosted by Jhovana",
        "num_bedrooms": 1,
        "num_baths": 1,
        "min_guests": 2,
        "size": "1 bedroom",
        "city": "New York City",
        "state": "NY",
        "country": "United States",
        "listing_type": "room",
        "ammenities": [
            "Courtyard view",
            "Fast wifi \u2013 67 Mbps",
            "32\" HDTV with standard cable",
            "Window AC unit",
            "Hair dryer",
            "Refrigerator",
            "Microwave",
            "Long term stays allowed"
        ],
        "location_desc": "Alphabet City it's the hearth and soul of the East Village,Located on the east side of iconic St Mark's Place and Tompkins Sq Park. full of diverse restaurants, bars and coffee shops. community gardens and amazing people\nOn weekends you can just walk around and stumble into all sorts of magic moments (musicians performing in the park, painters taking in the landscape or a movie production been shot outside ).\nShort distance to Nolita,Chinatown,LES and close to subways and short ride to Meatpacking district, Williamsburg Bk,etc. Bus to Battery Park stop right across the street from the apartment and you can always get a citibike and ride around the city (Docks are a couple of blocks away).",
        "photo_urls": [
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/ny_photos/9181483/image_6.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/ny_photos/9181483/image_10.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/ny_photos/9181483/image_5.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/ny_photos/9181483/image_0.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/ny_photos/9181483/image_3.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/ny_photos/9181483/image_7.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/ny_photos/9181483/image_4.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/ny_photos/9181483/image_2.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/ny_photos/9181483/image_8.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/ny_photos/9181483/image_9.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/ny_photos/9181483/image_11.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/ny_photos/9181483/image_1.jpg"
        ],
        "coordinates": [
            40.70859477903494,
            -74.00674587530195
        ]
    },
    {
        "main_title": "Charming, sunny room in artist's apartment",
        "price": 67,
        "cleaning_fee": 117.25,
        "service_fee": 134,
        "description": "Lovely room available in an artist's apartment. The room is fully furnished, the bed is very comfy. I provide fresh towels and sheets.\nInterior and mattresses are being exchanged frequently. The apartment is very quiet and catches plenty of daylight.\nLocated in Brooklyn, you will get to experience staying in a new, exciting neighborhood with artists and young families.\nThe Subway is on the same block! Short ride into Manhattan. This is the perfect place for a city vacation or business trip...\n\n\nYou are welcome to use the kitchen, all dishes included. You can have food in the fridge. I have a Microwave and a Electric water kettle for you to make coffee or tea. However, I cannot allow the use of the stove , no actual meal cooking please. Thank you!",
        "sub_title": "Private room in rental unit hosted by Deycke",
        "num_bedrooms": 1,
        "num_baths": 1,
        "min_guests": 1,
        "size": "1 bedroom",
        "city": "New York City",
        "state": "NY",
        "country": "United States",
        "listing_type": "room",
        "ammenities": [
            "Kitchen",
            "Wifi",
            "Dedicated workspace",
            "Free street parking",
            "Hair dryer",
            "Refrigerator",
            "Microwave"
        ],
        "location_desc": "A fresh new neighborhood! Cafe's..Restaurants..Supermarkets..parks! Safe. Authentic Brooklyn with a new vibe of artists and young families.",
        "photo_urls": [
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/ny_photos/43774160/image_5.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/ny_photos/43774160/image_0.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/ny_photos/43774160/image_3.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/ny_photos/43774160/image_4.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/ny_photos/43774160/image_2.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/ny_photos/43774160/image_1.jpg"
        ],
        "coordinates": [
            40.78597448832228,
            -73.9779067657788
        ]
    },
    {
        "main_title": "138 Bowery-Classic Queen Studio",
        "price": 140,
        "cleaning_fee": 245.0,
        "service_fee": 280,
        "description": "Located in Bowery \u2013 historically the most unique streetscape of New York with over 400 years of history and culture \u2013 this place is right around the corner of Grand St subway. Super convenient as you can be anywhere in Manhattan in just a few minutes. Steps away from SoHo, NoHo and major subway lines (6,J,Z,N,Q,B,D). Its unbeatable location puts the best of downtown.\n\n\nModern unit in an elevator building. This unit is illuminated by floor to ceiling industrial style windows, flooding the home with brilliant light. The room has a   hot plate, mini fridge, microwave, closet, spacious bathroom, smart TV and heat/air conditioning.",
        "sub_title": "Entire rental unit hosted by Jeniffer",
        "num_bedrooms": 1,
        "num_baths": 1,
        "min_guests": 2,
        "size": "Studio",
        "city": "New York City",
        "state": "NY",
        "country": "United States",
        "listing_type": "rental",
        "ammenities": [
            "Kitchen",
            "Wifi",
            "Free street parking",
            "TV",
            "Elevator",
            "Washer \u2013 In building",
            "Dryer \u2013 In building",
            "Air conditioning",
            "Hair dryer",
            "Security cameras on property"
        ],
        "location_desc": "This new building is situated on the dynamic Bowery just steps from Soho, Nolita, Noho, and the East Village. Its unbeatable location puts the best of downtown's galleries, boutiques, restaurants, wellness and nightlife at your doorstep.",
        "photo_urls": [
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/ny_photos/43315528/image_5.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/ny_photos/43315528/image_0.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/ny_photos/43315528/image_3.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/ny_photos/43315528/image_4.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/ny_photos/43315528/image_2.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/ny_photos/43315528/image_1.jpg"
        ],
        "coordinates": [
            40.77089576221531,
            -73.99026638414585
        ]
    },
    {
        "main_title": "Hell's Kitchen Enclave: a Diamond in the Rough.",
        "price": 100,
        "cleaning_fee": 175.0,
        "service_fee": 200,
        "description": "Hello and thank you for your interest in the space!\n\nWhen inquiring or submitting a reservation request, please send your detailed arrival and departure itineraries.\n\nI ask that you look over the listing thoroughly, read my reviews, house rules and house manual.  If you have any outstanding questions or concerns, please do not hesitate to bring those to my attention.\n\nI look forward to creating an outstanding part of your travel experience,\n\nWarmly,\n\nMichael\n\n\nThe space, located in the heart of the City, is suitable for a range of guests - solo adventurers, and business travelers alike - situated on a block shared with a school and car dealership, there are 1/2 as many people and twice the privacy. Up to date amenities, in a rustic, turn of the century walk-up, you will find solace.",
        "sub_title": "Entire rental unit hosted by Michael",
        "num_bedrooms": 1,
        "num_baths": 1,
        "min_guests": 1,
        "size": "Studio",
        "city": "New York City",
        "state": "NY",
        "country": "United States",
        "listing_type": "rental",
        "ammenities": [
            "Kitchen",
            "Fast wifi \u2013 324 Mbps",
            "Free street parking",
            "Window AC unit",
            "Bathtub",
            "Hair dryer",
            "Refrigerator",
            "Breakfast",
            "Long term stays allowed",
            "Security cameras on property"
        ],
        "location_desc": "Hell's Kitchen is the hottest neighborhood in Manhattan. While becoming the most modern part of town, there remains an authentic charm in Hell's Kitchen, a timeless sense of New York throughout it's history, and this space epitomizes that feel. Home to some of the best restaurants in the City and stone's throw from Broadway and the best off-Broadway productions, you really do not need to stray far. Many of the City's main attractions, including MOMA and Central Park, are a comfortable walk away. Sunset strolls along the Westside Highway feature the glow of the City.",
        "photo_urls": [
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/ny_photos/13169559/image_5.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/ny_photos/13169559/image_0.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/ny_photos/13169559/image_3.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/ny_photos/13169559/image_4.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/ny_photos/13169559/image_2.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/ny_photos/13169559/image_1.jpg"
        ],
        "coordinates": [
            40.68868258789342,
            -73.96434551572099
        ]
    },
    {
        "main_title": "Mural Haus: Private 1br apartment, in BedStuy",
        "price": 114,
        "cleaning_fee": 199.5,
        "service_fee": 228,
        "description": "This private 1br apartment is located on the ground floor of a gorgeous townhome. Enjoy a private entrance to this 1br efficiency apartment (feels like a large hotel suite with a fully equipped kitchen), perfect for a single person or couple. You have access to the free laundry room to wash your stuff so you can pack light. The home is 5 blocks away from the A train that takes you express to NYC in under 25min. BedStuy is a vibrant Brooklyn neighborhood full of great restaurants and bars.",
        "sub_title": "Entire rental unit hosted by George",
        "num_bedrooms": 1,
        "num_baths": 1,
        "min_guests": 2,
        "size": "1 bedroom",
        "city": "New York City",
        "state": "NY",
        "country": "United States",
        "listing_type": "rental",
        "ammenities": [
            "Kitchen",
            "Wifi",
            "Dedicated workspace",
            "Free street parking",
            "Hair dryer",
            "Refrigerator",
            "Microwave"
        ],
        "location_desc": "BedStuy is considered the hottest neighborhood in Brooklyn according to TimeOut Magazine. An interesting array of restaurants and bars are within walking distance and all of NYC best night life is within 30min from the house. The neighborhood is represented by a global array of characters and deeply rooted in the local culture of African American and West Indian home owners in the area. Walking through the neighborhood is like being in a small town. Everyone says hello and has a big smile on their face.",
        "photo_urls": [
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/ny_photos/617998141692186340/image_5.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/ny_photos/617998141692186340/image_0.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/ny_photos/617998141692186340/image_3.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/ny_photos/617998141692186340/image_4.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/ny_photos/617998141692186340/image_2.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/ny_photos/617998141692186340/image_1.jpg"
        ],
        "coordinates": [
            40.69675229760938,
            -73.9926696411455
        ]
    },
    {
        "main_title": "Upper West Side",
        "price": 152,
        "cleaning_fee": 266.0,
        "service_fee": 304,
        "description": "**NEWLY RENOVATED ONE BEDROOM APARTMENT**. Two blocks from Central Park and The West Side Highway. 10 mins from Harlem and 42nd street Times Square. The world famous Carmines is two blocks away on Broadway.",
        "sub_title": "Entire condo hosted by Earl",
        "num_bedrooms": 2,
        "num_baths": 1,
        "min_guests": 4,
        "size": "1 bedroom",
        "city": "New York City",
        "state": "NY",
        "country": "United States",
        "listing_type": "condo",
        "ammenities": [
            "City skyline view",
            "Park view",
            "Lake access",
            "Kitchen",
            "Wifi",
            "Dedicated workspace",
            "Free street parking",
            "HDTV with Fire TV",
            "Elevator",
            "Air conditioning"
        ],
        "location_desc": "Nestled between Riverside and Central Park, the Upper West Side is one of the greenest parts of Manhattan. The Upper West Side is known for popular attractions like the Natural History Museum and Lincoln Center, but relaxed bistros and a lively bar scene defy expectations in this sparkling and cozy uptown neighborhood.",
        "photo_urls": [
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/ny_photos/41133573/image_5.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/ny_photos/41133573/image_0.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/ny_photos/41133573/image_3.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/ny_photos/41133573/image_4.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/ny_photos/41133573/image_2.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/ny_photos/41133573/image_1.jpg"
        ],
        "coordinates": [
            40.69488510353104,
            -73.9398555644184
        ]
    }
]

ny_reviews = [
    [
        {
            "cleanliness": 4,
            "accuracy": 4,
            "communication": 4,
            "location": 3,
            "check_in": 4,
            "text": "This home is perfect for a big group. Our family of 16 gathered for grandpa's 80th birthday. We had a magical time. Weather was great so our time was mostly spent outside."
        }
    ],
    [
        {
            "cleanliness": 3,
            "accuracy": 2,
            "communication": 2,
            "location": 4,
            "check_in": 5,
            "text": "Very comfortable and clean space . Enjoyed my stay  and would definitely love to book again."
        },
        {
            "cleanliness": 2,
            "accuracy": 3,
            "communication": 4,
            "location": 2,
            "check_in": 2,
            "text": "Quiet neighborhood, good location, everything was great!"
        },
        {
            "cleanliness": 5,
            "accuracy": 3,
            "communication": 5,
            "location": 4,
            "check_in": 5,
            "text": "Such a beautiful house in an even more beautiful location. Our host was an amazing host and gave excellent walking and dinner recommendations in the local area. Check in was super easy. "
        },
        {
            "cleanliness": 5,
            "accuracy": 3,
            "communication": 4,
            "location": 4,
            "check_in": 2,
            "text": "Location is beautiful, location is amazing, communication was great, we had a wonderful weekend . Super kid friendly but would also stay with just adults. Great experience overall."
        },
        {
            "cleanliness": 4,
            "accuracy": 5,
            "communication": 2,
            "location": 4,
            "check_in": 2,
            "text": "The place was perfect for our family and friends visit to #New York City and also completing the Half Marathon. It was in a great location for easy access to the grocery store and within 30min of the south entrance to the park. The house had everything we needed and was exactly as described on the website. The views were amazing and the home was very comfortable. Would def stay here again."
        },
        {
            "cleanliness": 4,
            "accuracy": 4,
            "communication": 4,
            "location": 4,
            "check_in": 4,
            "text": "The house was given to us not cleaned. Even when we requested maid service and they actually came they did not do a good job. They only sprayed Windex everywhere. The counters and the floors remained greasy and so are the bathrooms very disgustingGreat location with a large group. Absolutely had a fantastic time."
        }
    ],
    [
        {
            "cleanliness": 3,
            "accuracy": 3,
            "communication": 5,
            "location": 2,
            "check_in": 4,
            "text": "Beautiful, clean home for multiple families to enjoy."
        }
    ],
    [
        {
            "cleanliness": 5,
            "accuracy": 2,
            "communication": 3,
            "location": 4,
            "check_in": 3,
            "text": "Quiet neighborhood, good location, everything was great!"
        },
        {
            "cleanliness": 4,
            "accuracy": 3,
            "communication": 3,
            "location": 2,
            "check_in": 2,
            "text": "Great neighborhood and a cozy place to stay! Parking isn\u2019t bad, you just need to know where to look."
        },
        {
            "cleanliness": 5,
            "accuracy": 3,
            "communication": 2,
            "location": 3,
            "check_in": 5,
            "text": "The place was very clean and comfortable. It had a nice little setup of snacks and coffee pods (more than you would get in a similarly priced hotel room). "
        },
        {
            "cleanliness": 3,
            "accuracy": 3,
            "communication": 5,
            "location": 4,
            "check_in": 2,
            "text": "Location is beautiful, location is amazing, communication was great, we had a wonderful weekend . Super kid friendly but would also stay with just adults. Great experience overall."
        }
    ],
    [
        {
            "cleanliness": 3,
            "accuracy": 5,
            "communication": 4,
            "location": 5,
            "check_in": 3,
            "text": "Very comfortable and clean space . Enjoyed my stay  and would definitely love to book again."
        },
        {
            "cleanliness": 3,
            "accuracy": 3,
            "communication": 5,
            "location": 2,
            "check_in": 5,
            "text": "This home is perfect for a big group. Our family of 16 gathered for grandpa's 80th birthday. We had a magical time. Weather was great so our time was mostly spent outside."
        },
        {
            "cleanliness": 5,
            "accuracy": 5,
            "communication": 4,
            "location": 3,
            "check_in": 5,
            "text": "The place was perfect for our family and friends visit to #New York City and also completing the Half Marathon. It was in a great location for easy access to the grocery store and within 30min of the south entrance to the park. The house had everything we needed and was exactly as described on the website. The views were amazing and the home was very comfortable. Would def stay here again."
        },
        {
            "cleanliness": 5,
            "accuracy": 4,
            "communication": 4,
            "location": 4,
            "check_in": 4,
            "text": "Beautiful, clean home for multiple families to enjoy."
        },
        {
            "cleanliness": 5,
            "accuracy": 4,
            "communication": 5,
            "location": 5,
            "check_in": 4,
            "text": "Such a beautiful house in an even more beautiful location. Our host was an amazing host and gave excellent walking and dinner recommendations in the local area. Check in was super easy. "
        }
    ],
    [
        {
            "cleanliness": 3,
            "accuracy": 2,
            "communication": 4,
            "location": 3,
            "check_in": 3,
            "text": "This home is perfect for a big group. Our family of 16 gathered for grandpa's 80th birthday. We had a magical time. Weather was great so our time was mostly spent outside."
        },
        {
            "cleanliness": 2,
            "accuracy": 5,
            "communication": 3,
            "location": 5,
            "check_in": 3,
            "text": "The place was very clean and comfortable. It had a nice little setup of snacks and coffee pods (more than you would get in a similarly priced hotel room). "
        },
        {
            "cleanliness": 3,
            "accuracy": 3,
            "communication": 4,
            "location": 5,
            "check_in": 3,
            "text": "Great neighborhood and a cozy place to stay! Parking isn\u2019t bad, you just need to know where to look."
        },
        {
            "cleanliness": 2,
            "accuracy": 4,
            "communication": 5,
            "location": 5,
            "check_in": 3,
            "text": "Beautiful, clean home for multiple families to enjoy."
        },
        {
            "cleanliness": 4,
            "accuracy": 3,
            "communication": 5,
            "location": 4,
            "check_in": 4,
            "text": "The place was perfect for our family and friends visit to #New York City and also completing the Half Marathon. It was in a great location for easy access to the grocery store and within 30min of the south entrance to the park. The house had everything we needed and was exactly as described on the website. The views were amazing and the home was very comfortable. Would def stay here again."
        },
        {
            "cleanliness": 5,
            "accuracy": 2,
            "communication": 4,
            "location": 4,
            "check_in": 4,
            "text": "Location is beautiful, location is amazing, communication was great, we had a wonderful weekend . Super kid friendly but would also stay with just adults. Great experience overall."
        }
    ],
    [
        {
            "cleanliness": 5,
            "accuracy": 2,
            "communication": 4,
            "location": 3,
            "check_in": 4,
            "text": "The house was given to us not cleaned. Even when we requested maid service and they actually came they did not do a good job. They only sprayed Windex everywhere. The counters and the floors remained greasy and so are the bathrooms very disgustingGreat location with a large group. Absolutely had a fantastic time."
        },
        {
            "cleanliness": 3,
            "accuracy": 4,
            "communication": 2,
            "location": 4,
            "check_in": 5,
            "text": "Great neighborhood and a cozy place to stay! Parking isn\u2019t bad, you just need to know where to look."
        },
        {
            "cleanliness": 3,
            "accuracy": 5,
            "communication": 5,
            "location": 3,
            "check_in": 3,
            "text": "Quiet neighborhood, good location, everything was great!"
        },
        {
            "cleanliness": 5,
            "accuracy": 3,
            "communication": 4,
            "location": 2,
            "check_in": 2,
            "text": "Beautiful #room. Perfect with plenty of beds and easy lake access. Great deck and yard with a nearby bbq makes for a perfect evening! Close walk to town with a fun bar aswell."
        },
        {
            "cleanliness": 3,
            "accuracy": 5,
            "communication": 5,
            "location": 5,
            "check_in": 4,
            "text": "The place was very clean and comfortable. It had a nice little setup of snacks and coffee pods (more than you would get in a similarly priced hotel room). "
        },
        {
            "cleanliness": 4,
            "accuracy": 5,
            "communication": 4,
            "location": 5,
            "check_in": 5,
            "text": "Location is beautiful, location is amazing, communication was great, we had a wonderful weekend . Super kid friendly but would also stay with just adults. Great experience overall."
        },
        {
            "cleanliness": 2,
            "accuracy": 3,
            "communication": 5,
            "location": 4,
            "check_in": 5,
            "text": "Such a beautiful house in an even more beautiful location. Our host was an amazing host and gave excellent walking and dinner recommendations in the local area. Check in was super easy. "
        }
    ],
    [
        {
            "cleanliness": 5,
            "accuracy": 5,
            "communication": 4,
            "location": 5,
            "check_in": 3,
            "text": "This home is perfect for a big group. Our family of 16 gathered for grandpa's 80th birthday. We had a magical time. Weather was great so our time was mostly spent outside."
        },
        {
            "cleanliness": 5,
            "accuracy": 4,
            "communication": 4,
            "location": 3,
            "check_in": 5,
            "text": "The house was given to us not cleaned. Even when we requested maid service and they actually came they did not do a good job. They only sprayed Windex everywhere. The counters and the floors remained greasy and so are the bathrooms very disgustingGreat location with a large group. Absolutely had a fantastic time."
        },
        {
            "cleanliness": 2,
            "accuracy": 2,
            "communication": 4,
            "location": 2,
            "check_in": 2,
            "text": "The place was perfect for our family and friends visit to #New York City and also completing the Half Marathon. It was in a great location for easy access to the grocery store and within 30min of the south entrance to the park. The house had everything we needed and was exactly as described on the website. The views were amazing and the home was very comfortable. Would def stay here again."
        }
    ],
    [
        {
            "cleanliness": 3,
            "accuracy": 2,
            "communication": 4,
            "location": 3,
            "check_in": 3,
            "text": "Such a beautiful house in an even more beautiful location. Our host was an amazing host and gave excellent walking and dinner recommendations in the local area. Check in was super easy. "
        }
    ],
    [
        {
            "cleanliness": 3,
            "accuracy": 5,
            "communication": 4,
            "location": 3,
            "check_in": 2,
            "text": "This place is spectacular. We loved our stay at this cozy #room. It had the most amazing view and the fresh air was so revitalizing. Our hosts were super communicative and made it so easy to check in and even provided a guest book with a list of things to do. We highly recommend this place!"
        },
        {
            "cleanliness": 5,
            "accuracy": 2,
            "communication": 5,
            "location": 2,
            "check_in": 5,
            "text": "Such a beautiful house in an even more beautiful location. Our host was an amazing host and gave excellent walking and dinner recommendations in the local area. Check in was super easy. "
        },
        {
            "cleanliness": 3,
            "accuracy": 3,
            "communication": 3,
            "location": 3,
            "check_in": 4,
            "text": "Quiet neighborhood, good location, everything was great!"
        }
    ],
    [
        {
            "cleanliness": 3,
            "accuracy": 4,
            "communication": 4,
            "location": 3,
            "check_in": 5,
            "text": "The place was perfect for our family and friends visit to #New York City and also completing the Half Marathon. It was in a great location for easy access to the grocery store and within 30min of the south entrance to the park. The house had everything we needed and was exactly as described on the website. The views were amazing and the home was very comfortable. Would def stay here again."
        },
        {
            "cleanliness": 2,
            "accuracy": 3,
            "communication": 3,
            "location": 4,
            "check_in": 3,
            "text": "Quiet neighborhood, good location, everything was great!"
        },
        {
            "cleanliness": 4,
            "accuracy": 5,
            "communication": 5,
            "location": 4,
            "check_in": 5,
            "text": "Very comfortable and clean space . Enjoyed my stay  and would definitely love to book again."
        },
        {
            "cleanliness": 4,
            "accuracy": 2,
            "communication": 2,
            "location": 5,
            "check_in": 2,
            "text": "Beautiful #room. Perfect with plenty of beds and easy lake access. Great deck and yard with a nearby bbq makes for a perfect evening! Close walk to town with a fun bar aswell."
        },
        {
            "cleanliness": 4,
            "accuracy": 2,
            "communication": 5,
            "location": 2,
            "check_in": 5,
            "text": "Beautiful, clean home for multiple families to enjoy."
        },
        {
            "cleanliness": 2,
            "accuracy": 4,
            "communication": 2,
            "location": 2,
            "check_in": 5,
            "text": "Location is beautiful, location is amazing, communication was great, we had a wonderful weekend . Super kid friendly but would also stay with just adults. Great experience overall."
        },
        {
            "cleanliness": 3,
            "accuracy": 3,
            "communication": 2,
            "location": 5,
            "check_in": 2,
            "text": "This home is perfect for a big group. Our family of 16 gathered for grandpa's 80th birthday. We had a magical time. Weather was great so our time was mostly spent outside."
        },
        {
            "cleanliness": 3,
            "accuracy": 5,
            "communication": 5,
            "location": 4,
            "check_in": 2,
            "text": "Such a beautiful house in an even more beautiful location. Our host was an amazing host and gave excellent walking and dinner recommendations in the local area. Check in was super easy. "
        }
    ],
    [
        {
            "cleanliness": 3,
            "accuracy": 2,
            "communication": 4,
            "location": 4,
            "check_in": 2,
            "text": "Quiet neighborhood, good location, everything was great!"
        },
        {
            "cleanliness": 5,
            "accuracy": 2,
            "communication": 4,
            "location": 5,
            "check_in": 4,
            "text": "Very comfortable and clean space . Enjoyed my stay  and would definitely love to book again."
        },
        {
            "cleanliness": 5,
            "accuracy": 4,
            "communication": 3,
            "location": 4,
            "check_in": 5,
            "text": "Beautiful #rental. Perfect with plenty of beds and easy lake access. Great deck and yard with a nearby bbq makes for a perfect evening! Close walk to town with a fun bar aswell."
        },
        {
            "cleanliness": 2,
            "accuracy": 3,
            "communication": 3,
            "location": 3,
            "check_in": 5,
            "text": "The house was given to us not cleaned. Even when we requested maid service and they actually came they did not do a good job. They only sprayed Windex everywhere. The counters and the floors remained greasy and so are the bathrooms very disgustingGreat location with a large group. Absolutely had a fantastic time."
        }
    ],
    [
        {
            "cleanliness": 5,
            "accuracy": 2,
            "communication": 3,
            "location": 2,
            "check_in": 3,
            "text": "The place was very clean and comfortable. It had a nice little setup of snacks and coffee pods (more than you would get in a similarly priced hotel room). "
        },
        {
            "cleanliness": 3,
            "accuracy": 2,
            "communication": 3,
            "location": 2,
            "check_in": 2,
            "text": "Very comfortable and clean space . Enjoyed my stay  and would definitely love to book again."
        },
        {
            "cleanliness": 2,
            "accuracy": 3,
            "communication": 3,
            "location": 3,
            "check_in": 2,
            "text": "Such a beautiful house in an even more beautiful location. Our host was an amazing host and gave excellent walking and dinner recommendations in the local area. Check in was super easy. "
        },
        {
            "cleanliness": 4,
            "accuracy": 5,
            "communication": 3,
            "location": 5,
            "check_in": 3,
            "text": "Location is beautiful, location is amazing, communication was great, we had a wonderful weekend . Super kid friendly but would also stay with just adults. Great experience overall."
        },
        {
            "cleanliness": 5,
            "accuracy": 3,
            "communication": 5,
            "location": 3,
            "check_in": 5,
            "text": "This home is perfect for a big group. Our family of 16 gathered for grandpa's 80th birthday. We had a magical time. Weather was great so our time was mostly spent outside."
        },
        {
            "cleanliness": 5,
            "accuracy": 4,
            "communication": 3,
            "location": 2,
            "check_in": 5,
            "text": "Beautiful, clean home for multiple families to enjoy."
        }
    ],
    [
        {
            "cleanliness": 2,
            "accuracy": 5,
            "communication": 5,
            "location": 2,
            "check_in": 5,
            "text": "Very comfortable and clean space . Enjoyed my stay  and would definitely love to book again."
        },
        {
            "cleanliness": 4,
            "accuracy": 5,
            "communication": 4,
            "location": 5,
            "check_in": 2,
            "text": "Such a beautiful house in an even more beautiful location. Our host was an amazing host and gave excellent walking and dinner recommendations in the local area. Check in was super easy. "
        },
        {
            "cleanliness": 2,
            "accuracy": 2,
            "communication": 4,
            "location": 3,
            "check_in": 5,
            "text": "Location is beautiful, location is amazing, communication was great, we had a wonderful weekend . Super kid friendly but would also stay with just adults. Great experience overall."
        },
        {
            "cleanliness": 5,
            "accuracy": 4,
            "communication": 2,
            "location": 2,
            "check_in": 2,
            "text": "The place was perfect for our family and friends visit to #New York City and also completing the Half Marathon. It was in a great location for easy access to the grocery store and within 30min of the south entrance to the park. The house had everything we needed and was exactly as described on the website. The views were amazing and the home was very comfortable. Would def stay here again."
        },
        {
            "cleanliness": 2,
            "accuracy": 2,
            "communication": 2,
            "location": 4,
            "check_in": 4,
            "text": "The place was very clean and comfortable. It had a nice little setup of snacks and coffee pods (more than you would get in a similarly priced hotel room). "
        },
        {
            "cleanliness": 2,
            "accuracy": 4,
            "communication": 3,
            "location": 4,
            "check_in": 5,
            "text": "This place is spectacular. We loved our stay at this cozy #rental. It had the most amazing view and the fresh air was so revitalizing. Our hosts were super communicative and made it so easy to check in and even provided a guest book with a list of things to do. We highly recommend this place!"
        }
    ],
    [
        {
            "cleanliness": 2,
            "accuracy": 3,
            "communication": 5,
            "location": 5,
            "check_in": 5,
            "text": "Very comfortable and clean space . Enjoyed my stay  and would definitely love to book again."
        },
        {
            "cleanliness": 2,
            "accuracy": 4,
            "communication": 2,
            "location": 4,
            "check_in": 5,
            "text": "This place is spectacular. We loved our stay at this cozy #condo. It had the most amazing view and the fresh air was so revitalizing. Our hosts were super communicative and made it so easy to check in and even provided a guest book with a list of things to do. We highly recommend this place!"
        },
        {
            "cleanliness": 5,
            "accuracy": 3,
            "communication": 3,
            "location": 3,
            "check_in": 4,
            "text": "The place was perfect for our family and friends visit to #New York City and also completing the Half Marathon. It was in a great location for easy access to the grocery store and within 30min of the south entrance to the park. The house had everything we needed and was exactly as described on the website. The views were amazing and the home was very comfortable. Would def stay here again."
        },
        {
            "cleanliness": 5,
            "accuracy": 4,
            "communication": 3,
            "location": 2,
            "check_in": 5,
            "text": "Such a beautiful house in an even more beautiful location. Our host was an amazing host and gave excellent walking and dinner recommendations in the local area. Check in was super easy. "
        }
    ]
]

puts "CREATING NY LISTINGS"
listings = []
users = []
puts "creating NY listings...."
ny_listing_objects.each do |listing|
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
puts "NY LISTINGS COMPLETE"

puts "CREATING NY REVIEWS"

ny_reviews.each_with_index do |review_array,i|
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

puts "NY REVIEWS COMPLETE"

miami_listing_objects = [
    {
        "main_title": "Miami Villa W/ Pool | Near Beach | Waterfront View",
        "price": 857,
        "cleaning_fee": 1499.75,
        "service_fee": 1714,
        "description": "5min Drive to Aventura Mall\n10min Drive to Sunny Isles Beach\n15min Drive to Fort Lauderdale\n\n\u2605Ask for Weekly Discount\u2605\n\nAn unforgettable stay awaits you at this luxurious waterfront home. Tucked in a residential area with beautiful lake views, you\u2019ll have the utmost privacy during your stay. While you may feel worlds away from all the action, this impeccably furnished home is located minutes from famous South Florida attractions, including top restaurants and beaches. \n\nExperience Miami With Us!\n\n\nKEY FEATURES:\n\n\u2600 5 spacious bedrooms + additional sleeping areas for large groups\n\u2600 2 full bathrooms w/ plush towels + luxurious amenities & outside shower\n\u2600 Modern kitchen w/ new appliances\n\u2600 Large living area w/ Smart TV, arcade games, foosball table, + popcorn machine\n\u2600 Beautiful outdoor space with private pool, outdoor sitting area + beautiful canal views\n\u2600 Central location near famous South Florida attractions\n\u2600 High speed free WiFi + Smart TVs in each room\n\u2600 Free parking \n\nHere Are A Few Kind Words From Our Past Guests:\n\n\u201cGreat stay and great location. The property was clean and had everything needed to enjoy the property. The location was ideal. Everything was great and the host was very responsive.\u201d - Dirk \u2605\u2605\u2605\u2605\u2605\n\n\u201cEverything about this Airbnb was amazing. Would definitely book with We Stay again.\u201d - Jennifer \u2605\u2605\u2605\u2605\u2605 \n\n\u201cThe property is beautifully appointed, clean, well stocked with everything needed for a home away from home. Lots to do without leaving the house. Management was extremely accommodating and responded in record time to our needs.\u201d - Vicki \u2605\u2605\u2605\u2605\u2605 \n\n\n\u2606\u2606 BEDROOMS \u2606\u2606\n\nLarge groups will have plenty of room to spread out thanks to the five spacious bedrooms and additional sleeping spaces located throughout the home. All five bedrooms are equipped with luxurious bedding and large Smart TVs to give guests the most comfortable stay possible. \n\nBedroom 1 features a comfy king-sized bed, a walk-in closet, and beautiful views of the canal and pool area. This room also has a private ensuite bathroom. \n\nBedroom 2 is the largest room in the home and features two queen-sized beds. The washing machine and dryer are located inside the closet.\n\nBedrooms 3 is furnished with a queen-sized bed, Smart-TV and is facing the bathroom.\n\nBedrooms 4 and 5 are each furnished with a queen-sized bed and share beautiful views of the lake and pool area.\n\nIf you have additional guests, we can provide two air mattresses as well. Please let us know in advance so we can prepare the correct amount of bedding for your group. \n\n\u2606\u2606 BATHROOMS \u2606\u2606\n\nNo need to wait around for your turn in the bathroom. This spacious property has 2 full bathrooms + 1 outside shower, each of which is outfitted with plush towels, hairdryers, and top-notch toiletries, including shampoo, conditioner, body wash, and body lotion. \n\nBathroom 1 is located off the first bedroom and features dual vanities and decent size walk-in shower. \n\nBathroom 2 sits off the main living area. This bathroom is outfitted with a shower/tub combo and a long vanity and mirror. \n\nBathroom 3 is situated in the pool area giving a rustic feeling to our interior design theme. \n\n\u2606\u2606 KITCHEN & LOUNGE \u2606\u2606\n\nThe modern kitchen is sure to please the chef of your group. This spacious area features new appliances, tons of counter space, and all the cooking basics you\u2019ll need to make delicious meals and tasty cocktails. You can enjoy your grub at the large dining table (seating for eight), or head to the outdoor dining area to soak up the sun and the breathtaking views as you eat. We also provide coffee for your stay.\n\nThe large living room area is decked out with a huge L-shaped sofa, a 65\u201d Smart TV, a foosball table, a popcorn machine, and an arcade game. This is the perfect place to hang out as a large group, whether you\u2019re enjoying a family movie night or a fun game tournament from our large collection of board games.\n\n\u2606\u2606 OUTDOOR SPACE \u2606\u2606\n\nThe large backyard is a collection of vibrant spaces that allow guests to experience Miami like local residents. Cool off in the private pool! We also have fun pool floaties and sun loungers to give you the full tropical experience. The outdoor space is also equipped with a gas grill, a hammock, and a dining area under the string lights of the pergola. Glide across the glistening lake and experience the marine life!\n\n\u2605\u2606 Book Today & Let Us Take Care Of You In Miami! \u2606\u2605",
        "sub_title": "Entire villa hosted by We Stay",
        "num_bedrooms": 6,
        "num_baths": 2,
        "min_guests": 13,
        "size": "5 bedrooms",
        "city": "Miami",
        "state": "FL",
        "country": "United States",
        "listing_type": "villa",
        "ammenities": [
            "Canal view",
            "Lake view",
            "Public or shared beach access",
            "Kitchen",
            "Wifi",
            "Dedicated workspace",
            "Free driveway parking on premises 3 spaces",
            "Private pool",
            "Security cameras on property",
            "Unavailable: Carbon monoxide alarm Carbon monoxide alarm"
        ],
        "location_desc": "The house is located in Miami, an upscale and safe city. A very lively area surrounded by lakes and green life of all sorts. Located close by beautiful beaches and near the Aventura mall the premier shopping destination in South Florida! Renowned for its luxury shopping and nightlife. Family friendly area with plenty of activities to do, such as restaurant, golfing entertainment and much more!",
        "photo_urls": [
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/miami_photos/609270474244401226/image_5.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/miami_photos/609270474244401226/image_0.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/miami_photos/609270474244401226/image_3.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/miami_photos/609270474244401226/image_4.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/miami_photos/609270474244401226/image_2.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/miami_photos/609270474244401226/image_1.jpg"
        ],
        "coordinates": [
            25.87185600896426,
            -80.30374021680686
        ]
    },
    {
        "main_title": "Garden Deluxe King in South Beach",
        "price": 122,
        "cleaning_fee": 213.5,
        "service_fee": 244,
        "description": "IMPORTANT: Please keep in mind that we are a hotel property. We collect a Property Fee of $30.00 + TAX per night, per room upon arrival. Your card will also be authorized $50 per day for incidentals upon arrival ($250 maximum), this incidentals deposit is refunded to you after checking out from the property. \n\nIf you are driving the Hotel has a Valet Parking service for an additional daily fee.\nFor pets, a cleaning fee may apply.\n\n\nIMPORTANT: Please keep in mind that we are a hotel property. We collect a Property Fee of $30.00 + TAX per night, per room upon arrival.\n\nYour card will also be authorized $50 per day for incidentals upon arrival ($250 maximum), this incidentals deposit is refunded to you after checking out from the property. \n\nIf you are driving the Hotel has a Valet Parking service for an additional daily fee.",
        "sub_title": "Room in boutique hotel hosted by Tal",
        "num_bedrooms": 1,
        "num_baths": 1,
        "min_guests": 2,
        "size": "1 bedroom",
        "city": "Miami",
        "state": "FL",
        "country": "United States",
        "listing_type": "in",
        "ammenities": [
            "Wifi",
            "Shared pool",
            "Pets allowed",
            "TV with standard cable",
            "Central air conditioning",
            "Crib",
            "Hair dryer",
            "Refrigerator",
            "Unavailable: Carbon monoxide alarm\nCarbon monoxide alarm",
            "Unavailable: Smoke alarm\nSmoke alarm"
        ],
        "location_desc": "Fairwind Hotel is located in the heart of South Beach within walking distance to most attractions in the South Beach area.",
        "photo_urls": [
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/miami_photos/549955297779670220/image_6.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/miami_photos/549955297779670220/image_10.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/miami_photos/549955297779670220/image_7.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/miami_photos/549955297779670220/image_8.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/miami_photos/549955297779670220/image_9.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/miami_photos/549955297779670220/image_11.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/miami_photos/549955297779670220/image_12.jpg"
        ],
        "coordinates": [
            25.94697338044887,
            -80.21537345494467
        ]
    },
    {
        "main_title": "Villa Canal with hot tub and backyard oasis",
        "price": 307,
        "cleaning_fee": 537.25,
        "service_fee": 614,
        "description": "Casa Canal is a relaxing oasis surrounded by tropical plants and a Beautiful Canal.  The canal is home to manatees, squirrels, bright green Iguanas, and at times wild green Parakeets in the tree canopy, You can enjoy all this from your private hot tub.\n\nSpend a quiet time fishing under the gumbo limbo tree while enjoying the tropical breeze. The backyard faces the Canal to the east and in the morning you can often enjoy a beautiful sunrise and sometimes in the evening an impressive full moon.\n\n\nCasa Canal, from the moment you walk in, you get a feeling of spacious, relaxing, non-cluttered space yet a place that makes you feel comfortable right away. The house is an open plan design with water views visible from all rooms. It has 3 large bedrooms, 2 bathrooms, and a large kitchen with a bar, 55\u201d HDTV, and plenty of seating. The kitchen is fully equipped, and there is a separate laundry room and a relaxing outdoor patio, accessible from the dining room All beds have 100% cotton sheets and guests are provided 100% premium quality cotton baths and hand towels.",
        "sub_title": "Entire villa hosted by Adam",
        "num_bedrooms": 3,
        "num_baths": 2,
        "min_guests": 7,
        "size": "3 bedrooms",
        "city": "Miami",
        "state": "FL",
        "country": "United States",
        "listing_type": "villa",
        "ammenities": [
            "Kitchen",
            "Wifi",
            "Dedicated workspace",
            "Free street parking",
            "Hair dryer",
            "Refrigerator",
            "Microwave"
        ],
        "location_desc": "Beautiful tropical neighborhood in North Miami 15 minutes to Miami Beach 20 minutes to downtown Miami perfect location for holidays day.\n\nPlease see the driving times to the most popular destinations in Miami.\n20-minute walk to Brickell City Center.\n15-minute drive to the sand of South Beach.\n22-minute drive to the cruise ship terminal at the Port of Miami.\n25 -minute drive to Key Biscayne Beach\n17 -minute drive to Little Havana\n17 -minute drive to Wynwood Art District\n17-minute drive to FTX Exchange Heat arena\n\nNorth Miami is a quiet family neighborhood with restaurants and supermarkets Down the street",
        "photo_urls": [
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/miami_photos/690749773349217396/image_6.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/miami_photos/690749773349217396/image_5.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/miami_photos/690749773349217396/image_0.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/miami_photos/690749773349217396/image_3.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/miami_photos/690749773349217396/image_7.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/miami_photos/690749773349217396/image_4.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/miami_photos/690749773349217396/image_2.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/miami_photos/690749773349217396/image_8.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/miami_photos/690749773349217396/image_9.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/miami_photos/690749773349217396/image_1.jpg"
        ],
        "coordinates": [
            26.015934348297954,
            -80.16973347903783
        ]
    },
    {
        "main_title": "Oceanfront 16th Floor Brand New Beachfront Flat",
        "price": 126,
        "cleaning_fee": 220.5,
        "service_fee": 252,
        "description": "A modern style and freshly renovated large beachfront studio apartment in Miami Beach with 180 degree ocean views of the crystal clear water and free parking. The apartment features a king size bed, fast and free unlimited 300mb WiFi Internet and a 60inch Samsung LED TV with Netflix HBOGO and TIVO HD service 500 channels.\n\nWhile we have always had the highest standards of cleanliness, we have now taken it to another level by investing in an Electric ULV Fogger to be used between each guest.\n\n\nWe just got done renovating every single aspect of Pure Miami Beach.  We basically tore it down to the cement walls and floor and then rebuilt it with functionality and design in mind. The result was a crisp all white modern studio that provides everything you need for a beach holiday. \n\nThis unit (along with our others) offers FREE PARKING for one car which is hard to find in Miami Beach.\n\nSome highlights of Pure Miami Beach\n-King Size bed (2mx2m) with brand new linens provided\n-Fresh Bath Towels, Hand Towels and Washcloths provided\n-Beach Towels Provided\n-Beach Chairs, Beach Umbrella and Snorkel gear provided\n-Tennis rackets provided\n-65 inch Samsung LED TV with Netflix HBOGO and TIVO HD service 500 channels.\n-300mb speed WIFI internet Free Private internet (unlimited)\n-Local telephone with free calls to USA and some other countries\n-iPhone speaker/alarm clock (lightning connector)\n-Keurig K-Cup\u00ae coffee system\n-Basic kitchenette with bar sink, medium size refrigerator, Freezer and Microwave\n-Electric Tea Kettle, Toaster, and blender to make some tropical drinks.\n-Door Combination lock, no keys required\n-All white contemporary design with LED lighting\n-All original artwork by Maru\n-Dyson cordless vacuum for quick cleanup\n-Iron, Iron board and Hairdryer\n-Pack n Play Baby Crib, Baby Tub or Toddler Cot Available upon request\n\n\n\nPure Miami Beach would be comfortable for 2 adults.  Potentially, somebody could sleep on the sofa (probrably a child) so we are listing it for 3 people.   Please let us know if you would like us to provide an extra set of sheets.",
        "sub_title": "Entire condo hosted by Shane And Maru",
        "num_bedrooms": 1,
        "num_baths": 1,
        "min_guests": 3,
        "size": "1 bedroom",
        "city": "Miami",
        "state": "FL",
        "country": "United States",
        "listing_type": "condo",
        "ammenities": [
            "Ocean view",
            "Sea view",
            "Beach access \u2013 Beachfront",
            "Kitchen",
            "Wifi",
            "Free parking on premises",
            "Pets allowed",
            "TV with standard cable",
            "Elevator",
            "Washer"
        ],
        "location_desc": "The location of Pure Miami Beach is very centrally located in a residential area. It is on the BEACH side of Collins avenue on millionaires row in Miami Beach. Being directly on Collins Ave provides quick access to all of Miami Beach and Miami.\n\nThere are numerous buses and taxis and UBERs always available on Collins ave since it is the primary artery connecting North Beach to South Beach. There is also access to the Miami Beach public bike system called CIti Bike.",
        "photo_urls": [
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/miami_photos/2131269/image_6.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/miami_photos/2131269/image_5.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/miami_photos/2131269/image_0.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/miami_photos/2131269/image_3.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/miami_photos/2131269/image_7.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/miami_photos/2131269/image_4.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/miami_photos/2131269/image_2.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/miami_photos/2131269/image_8.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/miami_photos/2131269/image_9.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/miami_photos/2131269/image_1.jpg"
        ],
        "coordinates": [
            25.717978560547287,
            -80.3668593324227
        ]
    },
    {
        "main_title": "Dune Paradise | Pool/HotTub Wynwood / Miami Beach",
        "price": 327,
        "cleaning_fee": 572.25,
        "service_fee": 654,
        "description": "Welcome to DUNE PARADISE!\n\nMIAMI meets DUNE to create a boho desert atmosphere with a touch of the Miami lifestyle. Kick your feet in the sand, enjoy the tranquility and privacy of our back terrace. This home is fully remodeled featuring an open concept, to create the perfect ambiance for your family and friends. 7-10 minutes from Wynwood, Midtown, and Design District. Private gated parking, brand new appliances, High Speed Wi-Fi, SMART TV, Apple Home System, Smart Light Switches & keyless Entry\n\n\nWe created a boho space all around the house. We mix natural materials as wood, cotton, fabrics, so you can enjoy nature in a different way.",
        "sub_title": "Entire villa hosted by Paula",
        "num_bedrooms": 12,
        "num_baths": 2,
        "min_guests": 16,
        "size": "5 bedrooms",
        "city": "Miami",
        "state": "FL",
        "country": "United States",
        "listing_type": "villa",
        "ammenities": [
            "Garden view",
            "Kitchen",
            "Fast wifi \u2013 321 Mbps",
            "Dedicated workspace",
            "Free parking on premises",
            "Private outdoor pool - available all year, open 24 hours",
            "Private hot tub",
            "Sauna",
            "Security cameras on property",
            "Unavailable: Carbon monoxide alarm\nCarbon monoxide alarm"
        ],
        "location_desc": "Our neighbors are very hard worker people, they know we are doing vacation rentals, and they are happy to know all our guests are very respectful and conscious that our city is a quit neighborhood.",
        "photo_urls": [
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/miami_photos/692684000824220589/image_5.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/miami_photos/692684000824220589/image_0.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/miami_photos/692684000824220589/image_3.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/miami_photos/692684000824220589/image_4.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/miami_photos/692684000824220589/image_2.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/miami_photos/692684000824220589/image_1.jpg"
        ],
        "coordinates": [
            25.603315347142136,
            -80.3144219132957
        ]
    },
    {
        "main_title": "At Mine | Miami Beach Suite steps from the Ocean",
        "price": 75,
        "cleaning_fee": 131.25,
        "service_fee": 150,
        "description": "Renovated boutique hotel suite in the highly desirable South Of Fifth area. This suite is situated in South Beach, just blocks from the ocean and it offers a private accommodation for vacationers and business travelers. The unit features a comfortable king bed, cable TV and central AC. Indulge in South Beach with warm weather all year long and great food, all within blocks from your suite.\nOn request parking is provided one block away from the property at a gated garage for just as $20/day.\n\n\nThe suite is equipped with free public Wi-Fi, Cable and a cable TV. Towels, wash clothes and fresh high quality linen is provided to every guest.\n\nAs exclusive operators of the property, we manage the whole building. While all the units have almost identical layout, pictures may slightly differ but the rooms all have the same features and amenities.",
        "sub_title": "Entire rental unit hosted by At Mine",
        "num_bedrooms": 1,
        "num_baths": 1,
        "min_guests": 2,
        "size": "1 bedroom",
        "city": "Miami",
        "state": "FL",
        "country": "United States",
        "listing_type": "rental",
        "ammenities": [
            "Wifi",
            "Dedicated workspace",
            "42\" HDTV",
            "Central air conditioning",
            "Luggage dropoff allowed",
            "Hair dryer",
            "Refrigerator",
            "Microwave",
            "Long term stays allowed",
            "Security cameras on property"
        ],
        "location_desc": "The Suite is located in the highly desirable South Of Fifth Area, just steps from the Ocean. There are numerous restaurants and bars that are within blocks from the property. Locals' favorites include: Nikki Beach for a vibey beach experience; Big Pink for casual American breakfast/lunch; Story for nightclubbers; Prime 112, Prime Italian and Prime Steakhouse for authentic top notch cuisines.",
        "photo_urls": [
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/miami_photos/48540406/image_5.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/miami_photos/48540406/image_0.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/miami_photos/48540406/image_3.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/miami_photos/48540406/image_4.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/miami_photos/48540406/image_2.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/miami_photos/48540406/image_1.jpg"
        ],
        "coordinates": [
            26.177075658724743,
            -80.14305343324794
        ]
    },
    {
        "main_title": "\u2605 EXCLUSIVE Luxury Studio with FREE Parking \u2605",
        "price": 134,
        "cleaning_fee": 234.5,
        "service_fee": 268,
        "description": "Come stay at our comfortable and luxurious quiet, high-floor, fully-equipped with king size bed, marble bathroom with shower and bath-tub, access to all in the heart of prestigious Brickell area of Miami. World-Class 5 star amenities, 24 gym, heated pool and jacuzzi hot tub with pool service, tennis courts, spa, restaurants, room service. Brickell is the top destination in Miami with restaurants, shops & nightlife Miami has to offer!\n\n\u2605FREE parking and FREE freshly brewed coffee in the morning\u2605\n\n\nSunny, spacious, warm, and quiet. You'll have the entire space all to yourself. This is Private Residence . You will get to enjoy ALL hotel amenities you could ever imagine! 24h gym, Pool and jacuzzi hot tub with pool service and food service, full service Spa, 2 rooftop tennis courts, hotel restaurants, wine room, dramatic Miami Bay views, and much more!\n\nAwarded Luxury Place of the Year!\nTripAdvisor Certificate of Excellence 5 in a row!!!!\nWalk Score: 97 \"Walkers Paradise\"\n\nConveniently located near:\nElevator ride to Conrad restaurants and bars\n1 minute walk to CVS\n1 minute walk to nearest restaurants and bars\n1 minute walk from waterfront promenade\n5 minute walk to Publix supermarket\n10 minute walk to Brickell City Centre\n\nEasy access by uber to South Beach, Key Biscayne, Midtown, Wynwood, Coconut Grove, Coral Gables, and more.\n\nIf there is anything you need to help make your stay easier just let me know.\nWe are here to serve you!\n\nLots of sunlight through multiple windows windows. Very quiet. 1 King size bed with memory foam mattress, comfortable bedding to make your stay as comfortable as possible. The kitchen includes a microwave, fridge, stove, garbage disposal, plates, utensils, glasses, cookware, etc.\n\nFREE Garage parking space is included with your stay. You will need to get a parking card and then enter the garage to park.",
        "sub_title": "Entire rental unit hosted by Brickell",
        "num_bedrooms": 2,
        "num_baths": 1,
        "min_guests": 3,
        "size": "Studio",
        "city": "Miami",
        "state": "FL",
        "country": "United States",
        "listing_type": "rental",
        "ammenities": [
            "City skyline view",
            "Kitchen",
            "Wifi",
            "Free parking on premises",
            "Shared outdoor pool - available all year, heated",
            "Shared hot tub",
            "50\" HDTV with Amazon Prime Video, Apple TV, standard cable",
            "Elevator",
            "EV charger",
            "Central air conditioning"
        ],
        "location_desc": "Brickell \u2013 the urban chic playground where entertainment abounds, culture comes to play, and nightlife never sleeps. This apartment is located within what Brickellites call the \u201c30-minute live-work-play circle,\u201d in the epicenter of Miami\u2019s business and financial district and surrounded by parks and historic landmarks, Biscayne Bay, Brickell Avenue. You are just steps away from, pedestrian-friendly bustling sidewalk cafes, restaurants, night-time establishments and posh boutiques found throughout Brickell and Downtown Miami. This is Miami's most exquisite and chic location; the place to be!",
        "photo_urls": [
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/miami_photos/17209451/image_5.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/miami_photos/17209451/image_0.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/miami_photos/17209451/image_3.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/miami_photos/17209451/image_4.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/miami_photos/17209451/image_2.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/miami_photos/17209451/image_1.jpg"
        ],
        "coordinates": [
            26.096939593711127,
            -80.32982099742416
        ]
    },
    {
        "main_title": "Large & charming in house suite. w/ free parking",
        "price": 69,
        "cleaning_fee": 120.75,
        "service_fee": 138,
        "description": "Only 6 minutes from Miami International Airport \u2708\ufe0f and 15 minutes from south beach. Feel comfortable and enjoy plenty of extra room at this spacious place. This huge house is shared with other guests, but the bathroom is only shared with one other guest.\n\n\nThis is a private room, with 2 baths that are shared with one more room. The bath is in the hallway across from the room. The house has 5 other rooms and communal areas, like kitchen, living, dinning and patio are shared with other guests.  We have a house keeper who comes daily and keeps everything shining .",
        "sub_title": "Private room in villa hosted by Alexander",
        "num_bedrooms": 1,
        "num_baths": 2,
        "min_guests": 2,
        "size": "1 bedroom",
        "city": "Miami",
        "state": "FL",
        "country": "United States",
        "listing_type": "room",
        "ammenities": [
            "Kitchen",
            "Wifi",
            "Dedicated workspace",
            "Free street parking",
            "Hair dryer",
            "Refrigerator",
            "Microwave"
        ],
        "location_desc": "The beautiful Coral Gables, fl\n\nOnly 6 minutes from Miami International Airport \u2708\ufe0f\n\n15 minutes from Miami Beach\n15 minutes from the port of Miami",
        "photo_urls": [
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/miami_photos/563866670114723236/image_5.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/miami_photos/563866670114723236/image_0.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/miami_photos/563866670114723236/image_3.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/miami_photos/563866670114723236/image_4.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/miami_photos/563866670114723236/image_2.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/miami_photos/563866670114723236/image_1.jpg"
        ],
        "coordinates": [
            25.46752249145874,
            -80.40260541581638
        ]
    },
    {
        "main_title": "**Ultra-Modern Home in Brickell with Ocean Views**",
        "price": 195,
        "cleaning_fee": 341.25,
        "service_fee": 390,
        "description": "Amazing Huge 1 Bedroom w/ Beautiful Ocean Views from 37th floor in the Heart of Brickell! White Porcelain Floors throughout! 2 FREE ASSIGNED PARKING SPACES in garage! Building, The Club at Brickell Bay, features 2 Huge Pools & Jacuzzi on expansive pool deck, 3 Room Gym w/ New State-of-the Art equipment, steam room, kids play room & more! All Brand-New Furniture & Decor throughout the home. High-speed internet & extensive cable TV w/ Two 55-Inch 4K Smart TVs for Netflix, Hulu, & Amazon Prime.\n\n\nAmazing Huge 1 Bedroom with Beautiful Bayviews from the 37th floor.  Two Huge 55-Inch Ultra-High Definition 4K Smart TVs in both the Living Room and Bedroom with Netflix, Hulu and Amazon Prime Video.  Ultra-Modern Luxury Brand-New Furniture and Decor throughout the Home.  Building is in the heart of Brickell on 12th street and Brickell Bay Drive in The Club at Brickell Bay.  Unit comes with a FREE PARKING Space assigned in the garage.  High-speed internet and extensive cable TV.  \n\nAmenities feature 2 Huge outdoor pools and a Hot tub/Jacuzzi on the pool deck on the 14th floor with Spectacular Ocean Views.  Building also has a 24 Hour state of the art Gym with 3 huge rooms of equipment and also a Sauna/Steam Room to enjoy.  Guests have access to all the amenities free of charge.",
        "sub_title": "Entire condo hosted by Philip",
        "num_bedrooms": 2,
        "num_baths": 1,
        "min_guests": 4,
        "size": "1 bedroom",
        "city": "Miami",
        "state": "FL",
        "country": "United States",
        "listing_type": "condo",
        "ammenities": [
            "Waterfront",
            "Kitchen",
            "Wifi",
            "Free parking on premises",
            "Shared pool",
            "Shared hot tub",
            "TV with standard cable",
            "Elevator",
            "Washer \u2013 In unit",
            "Dryer \u2013 In unit"
        ],
        "location_desc": "The undisputed hot-spot for business, high-end hotels, fine dining, and ultra-luxury condominiums, Brickell is the new heart of Miami. The downtown destination offers walkable convenience to many of the city\u2019s best attractions, with great proximity to Miami Beach, Coconut Grove, and other points of interest throughout the city.\n\nPrimarily condominium properties dominate the dazzling skyline here, with captivating views of Biscayne Bay and the lights of west Miami. In the center of Brickell, Mary Brickell Village is a popular dining and entertainment district, with a few shops and boutiques also in the mix and the massive Brickell City Centre offers elite shopping, even more high-end hotels, and the most coveted office space in the city.",
        "photo_urls": [
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/miami_photos/38851131/image_5.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/miami_photos/38851131/image_0.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/miami_photos/38851131/image_3.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/miami_photos/38851131/image_4.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/miami_photos/38851131/image_2.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/miami_photos/38851131/image_1.jpg"
        ],
        "coordinates": [
            25.90809498854923,
            -80.19523848558525
        ]
    },
    {
        "main_title": "OCEANFRONT King Size bed/Bayview with free parking",
        "price": 110,
        "cleaning_fee": 192.5,
        "service_fee": 220,
        "description": "BEACHFRONT Studio apartment 400 sq ft with bayview Beautifull apartment in an oceanfront building located in the heart of Miami Beach , 10 blocks north of famous Fontainebleau Hotel Building has beach access , gym , tennis court , spa , Restaurant and Tiki Bar Close to the Downtown Miami and Port of Miami , 15 minutes from Miami airport and 35 from FLL airport Free Valet parking included (It's a 36 dollars value) Free Miami Beach Trolley transportation on Collins ave.\n\n\nThe apartment has a King Size bed and a Full sofabed, a big table , a led TV set with cable television and large closet. The kitchen has a full size fridge, microwave, burners, coffee maker, toaster,\u2026Free wireless Internet access\nThe apartment has Microwave ,, refrigerator, central air conditioner , ,coffemaker , Wi-FI internet ,TV\n-Coffee Machine, Toaster.\n-Iron, Iron board and Hairdryer\n\nINCLUDES:\n- Direct access to the beach\n- Tiki Bar & restaurant by the pool\n- FREE GYM\n- FREE Tennis court\n- Included valet parking service ( Rare in MiamiBeach )\n-% 100 Airbnb legal condominium hotel\n- Restaurants at the lobby and on site\n- Free trolley bus every 15 minutes\n10 minutes from the heart of South Beach: Collins Express\n- Famous Russian and Turkish spa (Not included)\n- Mini market.\n\nThis unit offers FREE PARKING for one car which is hard to find in Miami Beach.\n\nSome highlights \n-Fresh Bath Towels, Hand Towels and Washcloths provided\n-Beach Towels Provided\n-Beach Chairs, Beach Umbrella and Towels.\n-Tennis rackets provided\n-WIFI internet hassle free (unlimited)\n-Refrigerator, Freezer and Microwave\n-Vacuum for quick cleanup\n-Iron, Iron board and Hairdryer\n\n\nYou are renting directly with me, and there is no daily housekeeping. We will do our best to accommodate early check ins or late check outs. It really just depends on availability.\n\nThe location of the apartment is amazing. It on the BEACH side of Collins avenue in millionaires row in Miami Beach . It is about a 10 minute drive to south beach as well as a 20 minute drive up to Aventura shopping mall. There are numerous buses and taxis always available on Collins ave since it is the primary artery connecting North Beach to South Beach. There is also access to the Miami Beach public bike system called Deco Bike.\n\nTo access the beach, you only need to take the elevator to LL (Lower Level) and walk past the pool and you are on the beach. There are no streets to cross or ways to get lost which makes it very safe for children",
        "sub_title": "Entire rental unit hosted by Agustin",
        "num_bedrooms": 2,
        "num_baths": 1,
        "min_guests": 3,
        "size": "Studio",
        "city": "Miami",
        "state": "FL",
        "country": "United States",
        "listing_type": "rental",
        "ammenities": [
            "Beach access  Beachfront",
            "Kitchen",
            "Wifi",
            "Dedicated workspace",
            "Free parking on premises",
            "Shared pool",
            "Shared hot tub",
            "TV with standard cable",
            "Elevator",
            "Washer"
        ],
        "location_desc": "Located right on Millionaires row, this beachfront property is 10 minutes away from South Beach and Bar Harbor, 5 minutes away from to La Gorce Golf Course, 20 minutes away from MIA International Airport, and 20 minutes away from Florida International University-Biscayne Bay Campus.",
        "photo_urls": [
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/miami_photos/47112870/image_5.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/miami_photos/47112870/image_0.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/miami_photos/47112870/image_3.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/miami_photos/47112870/image_4.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/miami_photos/47112870/image_2.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/miami_photos/47112870/image_1.jpg"
        ],
        "coordinates": [
            25.78394668344655,
            -80.24835986551027
        ]
    },
    {
        "main_title": "At Mine | Charming Suite in Miami Beach",
        "price": 58,
        "cleaning_fee": 101.5,
        "service_fee": 116,
        "description": "Beautifully renovated boutique hotel suite in the highly desirable Mid Beach area. This suite is situated in one block away from the beach and it offers a private and quiet accommodation for vacationers and business travelers. The unit features a comfortable king-sized bed, Cable TV, Mini fridge and central AC. Indulge in Miami Beach with warm weather all year long.\nOn request parking is provided one block away from the property at a valet parking for just as $25/day.\n\n\nThe suite is equipped with free public Wi-Fi, Cable Cable TV, Towels, wash clothes and fresh high quality linen is provided to every guest. Our common area includes a Cozy Rooftop with Cabanas and comfortable table and chair to enjoy the beautiful sunset of Miami. We also provide a Workspace for our guests in the lobby and in our lovely Patio.\n\nAs exclusive operators of the property, we manage the whole building. While all the units have almost identical layout, pictures may slightly differ but the rooms all have the same features and amenities.",
        "sub_title": "Entire rental unit hosted by At Mine",
        "num_bedrooms": 1,
        "num_baths": 1,
        "min_guests": 2,
        "size": "1 bedroom",
        "city": "Miami",
        "state": "FL",
        "country": "United States",
        "listing_type": "rental",
        "ammenities": [
            "Kitchen",
            "Wifi",
            "Dedicated workspace",
            "Free street parking",
            "Hair dryer",
            "Refrigerator",
            "Microwave"
        ],
        "location_desc": "The Suite is located in the highly desirable Mid Beach Area, just steps from the Ocean. There are numerous restaurants and bars that are within blocks from the property. Locals' favorites include: Cecconi's Restaurant at Soho House for a vibery food experience; Piola for casual Italian Pizzeria; LIV for nightclubbers; Nobu, Hakkasan and Scarpetta Restaurant for authentic top notch cuisines.",
        "photo_urls": [
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/miami_photos/733251743064542501/image_5.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/miami_photos/733251743064542501/image_0.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/miami_photos/733251743064542501/image_3.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/miami_photos/733251743064542501/image_4.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/miami_photos/733251743064542501/image_2.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/miami_photos/733251743064542501/image_1.jpg"
        ],
        "coordinates": [
            25.867103474921535,
            -80.19177489062152
        ]
    },
    {
        "main_title": "Sextant Collins Ave PH Rooftop Pool Near Beach",
        "price": 670,
        "cleaning_fee": 1172.5,
        "service_fee": 1340,
        "description": "LOCATION: The property is located in South Beach, one block from the ocean, 25 mins from MIA (45 minutes from FLL Airport), and has many bars, restaurants, and shopping at your doorstep.\n\nSituated in the heart of South Beach, the Collins Ave Penthouse is your dream Miami location. This 4-bedroom Penthouse spans over 6500 SF and offers the amenities of a condo with the privacy and space of a home. Relax in luxury in your heated, private, rooftop infinity pool, or walk just one block to the beach.\n\n\nCHECK-IN & CHECK-OUT: Check-in is any time after 4PM and check-out is any time before 11AM. An early check-in or late check-out time may be available, please inquire about pricing at the time of booking.\n\nBEDROOMS: This property sleeps 8 guests in 7 beds and 1 air mattress. Smart TVs are located in each bedroom. See bed count below:\n- Bedroom 1: 2 Queens\n- Bedroom 2: 1 King\n- Bedroom 3: 2 Queens\n- Bedroom 4: 2 Queens\n- Common Area: 1 Queen Air Mattress\nAdditional beds cannot be provided.\n\nBATHROOMS: Both full bathrooms are stocked with toiletries (shampoo, conditioner, and body wash), plush towels and washcloths, and a hairdryer. There are also 2 half bathrooms, one just off the living room, and a second right by the pool, for a total of 4 bathrooms.\n\nKITCHEN & DINING: The kitchen is fully stocked (200-piece culinary set) and has a full line of new appliances (blender and drip coffee maker included). The dining area has seating for 10, with 8 at the dinner table and 4 at the bar, along with all the necessary dinnerware.\n\nOUTDOOR SPACE: The outdoor focal point is the heated, infinity 20'x10' pool (5' deep), and also includes a Propane BBQ. The entire rooftop is private and exclusively for your use. No one has access to the rooftop or pool, other than the pool cleaner who comes each Friday. \n\nPARKING: Public parking garage is available 1 block south Miami Beach Parking Garage.\n\nTRASH INSTRUCTION: Please take all trash bags to the dumpster located on the left side of the alley.\n\nWHAT\u2019S INCLUDED?: Iron and ironing board, steamer, washer/dryer, 1 pack-n-play crib, 1 high chair, 1 queen-sized air mattress, 12 beach towels, free WiFi (75 Mbps) and Smart TVs for your streaming apps like Netflix. Games, toys and stair gates provided upon availability.",
        "sub_title": "Entire villa hosted by Sextant Stays",
        "num_bedrooms": 7,
        "num_baths": 3,
        "min_guests": 8,
        "size": "4 bedrooms",
        "city": "Miami",
        "state": "FL",
        "country": "United States",
        "listing_type": "villa",
        "ammenities": [
            "Kitchen",
            "Wifi",
            "Dedicated workspace",
            "Pool",
            "Pets allowed",
            "TV",
            "Elevator",
            "Washer",
            "Dryer",
            "Security cameras on property"
        ],
        "location_desc": "South Beach",
        "photo_urls": [
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/miami_photos/35380290/image_6.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/miami_photos/35380290/image_5.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/miami_photos/35380290/image_0.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/miami_photos/35380290/image_3.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/miami_photos/35380290/image_7.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/miami_photos/35380290/image_4.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/miami_photos/35380290/image_2.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/miami_photos/35380290/image_8.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/miami_photos/35380290/image_9.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/miami_photos/35380290/image_1.jpg"
        ],
        "coordinates": [
            25.866064375664198,
            -80.32168937378448
        ]
    },
    {
        "main_title": "Modern Studio Apartment I Vibrating Miami Downtown",
        "price": 103,
        "cleaning_fee": 180.25,
        "service_fee": 206,
        "description": "Modern and Bright Studio Apartment\n\nThe space\nThis modern and sleek Studio Apartment with amazing view on Miami Brickell makes an easy choice for a Miami gate away. The apartment offers all the comfort: full kitchen, private balcony, washer and dryer, Smart TV, Wi-Fi, silverware, coffee maker.\nBrickell House offers its guests a number of fabulous amenities, including a rooftop pool and sundeck; lounge with an event bar and catering kitchen; a theater; a 50-foot lap pool with poolside cabanas; a fitness center; conference rooms; a spa with co-ed sauna and steam room; and two street-level restaurants. Additionally, Brickell House offers concierge.\nThe unit is located on the 27th floor.",
        "sub_title": "Entire rental unit hosted by Luca",
        "num_bedrooms": 2,
        "num_baths": 1,
        "min_guests": 2,
        "size": "Studio",
        "city": "Miami",
        "state": "FL",
        "country": "United States",
        "listing_type": "rental",
        "ammenities": [
            "Kitchen",
            "Wifi",
            "Shared outdoor pool - available all year, open specific hours, heated",
            "Hot tub",
            "TV",
            "Washer",
            "Dryer",
            "Air conditioning",
            "Patio or balcony",
            "Unavailable: Carbon monoxide alarm\nCarbon monoxide alarm"
        ],
        "location_desc": "Referred to as the 'Manhattan of the South', Brickell is home to the largest concentration of international banks in the United States, and home to many of Miami's top restaurants, shops and places of entertainment.\nDowntown Miami is a neighborhood where contrasts converge, enabling residents to enjoy the best of many worlds. Here, it is possible to enjoy the frenetic, businesslike energy of weekdays and the relaxed, joyful feeling of a vacation all on the same day. The diverse neighborhood houses residents who come from a variety of cultural and ideological backgrounds. Even the physical environment presents an intriguing contrast, as the neighborhood's towering skyscrapers run right up to the teal waters of Biscayne Bay.\nOne of the most important business hubs in Florida, Downtown Miami attracts professionals who want to be close to their jobs at the financial and commercial institutions in the neighborhood. Others come for the hot nightlife scene and world-class restaurants. Residents from all walks of life enjoy the neighborhood's year-round warm temperatures and blue skies.",
        "photo_urls": [
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/miami_photos/46531039/image_6.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/miami_photos/46531039/image_5.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/miami_photos/46531039/image_0.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/miami_photos/46531039/image_3.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/miami_photos/46531039/image_4.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/miami_photos/46531039/image_2.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/miami_photos/46531039/image_1.jpg"
        ],
        "coordinates": [
            25.81513732456243,
            -80.1271063478915
        ]
    },
    {
        "main_title": "Ocean view studio, w 2 Queens",
        "price": 169,
        "cleaning_fee": 295.75,
        "service_fee": 338,
        "description": "Beautiful Studio with Ocean view! \nLocated in the Heart of Miami-Beach on famous Collins Avenue Featuring\n\n- Direct Beach Access\n- Large Pool\n- Tiki Bar&restaurant by the pool\n- famous russian&Turkish spa\n- FREE GYM - FREE valet Parking (Rare MiamiBeach)\n- 100% Airbnb legal condo hotel\n- on site Restaurant\n- Free trolley bus every 15mins in front 10 minutes to South Beach\u2019s heart. (\u201cCollins Express\u201d)\n\n\nBTRO10510072021, 234391",
        "sub_title": "Entire condo hosted by Jessica",
        "num_bedrooms": 2,
        "num_baths": 1,
        "min_guests": 4,
        "size": "1 bedroom",
        "city": "Miami",
        "state": "FL",
        "country": "United States",
        "listing_type": "condo",
        "ammenities": [
            "Kitchen",
            "Wifi",
            "Dedicated workspace",
            "Free street parking",
            "Hair dryer",
            "Refrigerator",
            "Microwave"
        ],
        "location_desc": "We are Located in the heart of Collins Avenue, directly on the ocean.\nand right in between South-Beach to your south, and Bal-Harbour & Aventura to your north.\nLincoln Road Mall, Ocean Drive, Bal-Harbour shopping center and Aventura Mall,\nare all 15 minutes away!\n\nthere is a supermarket in the building, and vending machines. but if you want a huge supermarket with free parking go to Publix Supermarket on 69th & Collins!",
        "photo_urls": [
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/miami_photos/54159486/image_6.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/miami_photos/54159486/image_5.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/miami_photos/54159486/image_0.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/miami_photos/54159486/image_3.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/miami_photos/54159486/image_7.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/miami_photos/54159486/image_4.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/miami_photos/54159486/image_2.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/miami_photos/54159486/image_8.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/miami_photos/54159486/image_9.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/miami_photos/54159486/image_1.jpg"
        ],
        "coordinates": [
            25.87281835750436,
            -80.12306456397087
        ]
    },
    {
        "main_title": "Modern 4.5 bdr 3 bath dream house with heated pool",
        "price": 299,
        "cleaning_fee": 523.25,
        "service_fee": 598,
        "description": "Welcome to our stylish recently remodeled home with a short drive to the beach. Open-concept living space and top-of-the-line kitchen with plenty of natural light. A beautiful outside dining area and a Gazebo are perfect for skipping a beach day in style. We created this space to meet the highest standards of quality and taste. We look forward to welcoming you!\n\n\nOur recently remodeled home with an open space concept is perfect for someone looking to enjoy indoor and outdoor living. The open kitchen is merged with a living room that leads to a gorgeous pool with a mounted waterfall fountain, a spacious lounge area with a cozy gazebo, and plenty of chaise lounge chairs. A high fence provides a feeling of seclusion, yet blends in perfectly with the overall flow of the backyard. There is a separate grilling corner for that grilling enthusiast who wants to focus on prepping their perfect steak or fish without being splashed down by someone else's cannonballs into the pool. Interior is made in light colors, using only natural materials. Granite countertops, stainless steel appliances, and all amenities make the kitchen a perfect spot to cook up that dish you've been wanting to try since you started to plan your vacation.  \nThe home features five bedrooms. The master bedroom has a gorgeous newly renovated bathroom with a sunken tub and double vanity. The second master bedroom has a private bath with a stand-up shower, also a convenient adjacent room with a bunk bed and en-suite bathroom.  Two other bedrooms share a spacious bathroom. Perfect for the two best friends or family men who want to have their own privacy, but don't mind sharing a bathroom.",
        "sub_title": "Entire villa hosted by Tim",
        "num_bedrooms": 6,
        "num_baths": 3,
        "min_guests": 10,
        "size": "5 bedrooms",
        "city": "Miami",
        "state": "FL",
        "country": "United States",
        "listing_type": "villa",
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
        "location_desc": "Our house is located at the border of Miramar and Hollywood hills. This is a quiet residential area centrally located to different tourist attractions.\nThe local supermarket is just a block away.",
        "photo_urls": [
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/miami_photos/51212524/image_5.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/miami_photos/51212524/image_0.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/miami_photos/51212524/image_3.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/miami_photos/51212524/image_4.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/miami_photos/51212524/image_2.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/miami_photos/51212524/image_1.jpg"
        ],
        "coordinates": [
            25.779787311245922,
            -80.13518991573274
        ]
    },
    {
        "main_title": "BrandNew~OceanViewStudio FreeParking&Pool",
        "price": 177,
        "cleaning_fee": 309.75,
        "service_fee": 354,
        "description": "Studio with stunning direct Ocean Views, in an ocean front resort, \nLocated in the Heart of Miami-Beach on famous Collins Avenue in the famous Castle Beach Club \n\nFeaturing \n- Direct Beach Access  \n- fabulous infinity pool \n- Tiki Bar&restaurant by the pool \n- famous russian&Turkish spa\n- GYM \n- FREE valet Parking \n- %100 Airbnb legal condo hotel \n- on site Restaurants \n- Free trolley bus every 15mins in front 10 minutes to South Beach\u2019s heart. (\u201cCollins Express\u201d)\n\n\nBTRO10510072021, 234391",
        "sub_title": "Entire condo hosted by Jessica",
        "num_bedrooms": 2,
        "num_baths": 1,
        "min_guests": 4,
        "size": "1 bedroom",
        "city": "Miami",
        "state": "FL",
        "country": "United States",
        "listing_type": "condo",
        "ammenities": [
            "Kitchen",
            "Wifi",
            "Dedicated workspace",
            "Free street parking",
            "Hair dryer",
            "Refrigerator",
            "Microwave"
        ],
        "location_desc": "We are Located in the heart of Collins Avenue, directly on the ocean.\nand right in between South-Beach to your south, and Bal-Harbour & Aventura to your north.\nLincoln Road Mall, Ocean Drive, Bal-Harbour shopping center and Aventura Mall,\nare all 15 minutes away!\n\nthere is a supermarket in the building, and vending machines. but if you want a huge supermarket with free parking go to Publix Supermarket on 69th & Collins!",
        "photo_urls": [
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/miami_photos/54158842/image_5.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/miami_photos/54158842/image_0.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/miami_photos/54158842/image_3.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/miami_photos/54158842/image_4.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/miami_photos/54158842/image_2.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/miami_photos/54158842/image_1.jpg"
        ],
        "coordinates": [
            25.638281991029878,
            -80.30552223810197
        ]
    },
    {
        "main_title": "Oceanfront 1 BDR at Hyde Resort! NO cleaning and service fee!",
        "price": 174,
        "cleaning_fee": 304.5,
        "service_fee": 348,
        "description": "Welcome to The HYDE Resort\n\nHollywood's new hottest residential-style resort featuring beach-inspired amenities, and a prime location.\nWhere we will make sure that this luxuries 1 bedroom apartment will feel like your home away from home.\n\nEnjoy breathtaking views, wrap-around balconies, contemporary European furniture, fully equipped gourmet style kitchen, High-Speed WiFi, and much more.\n\nATTENTION PLEASE!\nKindly review and agree to everything described in \"Other things to note\"!\n\n\nThis superbly styled oceanfront apartment makes for a perfect luxurious getaway. Ideal for groups of friends & family looking for a high-end Florida location. Great for people looking for an extraordinary Airbnb experience. It even suits couples looking for luxurious \u201chome away from home\u201d or a romantic break!\n\nHighlights include contemporary European furniture, fully equipped gourmet style kitchen, High-Speed WiFi, and in-suite washers and dryers.\n\nLiving Area:\nThe main living space is professionally designed to be tasteful as well as comfortable for your stay. The open plan kitchen has everything you will need for your stay including a toaster, cooking pots, utensils and even a coffeemaker. From the kitchen island you look out to the living room/dinning are as well as beautiful views through panoramic floor to ceiling windows. The dining area has a table and four chairs. The dining area leads into the living area which has a comfortable couch along with a Smart TV that is perfect after a long day at the beach.\n\n\nMaster Bedroom (Ocean view):\nThe master bedroom has a king sized bed with high quality memory foam and ecologically produced bed linens and beautiful ocean views. The closet provides plenty of space to store all your clothes. This bedroom has flat screen TV.",
        "sub_title": "Entire serviced apartment hosted by Stay Today",
        "num_bedrooms": 1,
        "num_baths": 1,
        "min_guests": 4,
        "size": "1 bedroom",
        "city": "Miami",
        "state": "FL",
        "country": "United States",
        "listing_type": "serviced",
        "ammenities": [
            "City skyline view",
            "Ocean view",
            "Public or shared beach access  Beachfront",
            "Kitchen",
            "Wifi",
            "Dedicated workspace",
            "Shared outdoor pool - available all year, open specific hours, heated, infinity, rooftop",
            "Shared hot tub - available all year, open specific hours",
            "Pets allowed"
        ],
        "location_desc": "Hallandale Beach is a great town that sits squarely between Miami and Fort Lauderdale offering the best of each city only minutes away in a car. The neighborhood has plenty of shopping available with a Walmart right across the street for food shopping during extended stays, there are several restaurants available including Etaru which sits right on the Beach next to the building beach service area.",
        "photo_urls": [
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/miami_photos/745045767427118425/image_5.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/miami_photos/745045767427118425/image_0.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/miami_photos/745045767427118425/image_3.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/miami_photos/745045767427118425/image_4.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/miami_photos/745045767427118425/image_2.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/miami_photos/745045767427118425/image_1.jpg"
        ],
        "coordinates": [
            25.708015198788985,
            -80.3084092266167
        ]
    },
    {
        "main_title": "NEW! \"Villa Paradise\" ~ Lux Gem ~ Pool ~ Game Room",
        "price": 268,
        "cleaning_fee": 469.0,
        "service_fee": 536,
        "description": "Bring your family to the luxurious 3BR 2Bath Villa Paradise in the tranquil and friendly neighborhood in southern Miami, FL. Visit the exciting attractions, natural landmarks, restaurants, shops, and much more, and then retreat to the lavish oasis that will leave you in awe with its stylish design, private backyard, and rich amenity list.\n\n\u2714 3 Comfortable BRs\n\u2714 Open Design Living\n\u2714 Fully Equipped Kitchen\n\u2714 Swimming Pool\n\u2714 Game Room\n\u2714 Smart TVs\n\u2714 Smart House\n\u2714 High-Speed Wi-Fi\n\u2714 Free Parking\n\n\nAs soon as you step foot in this beautiful family home, you're welcomed by a very stylish yet highly comfortable open floor plan. It is uniquely designed and decorated professionally in an elegant manner that complements the tranquil but tropical, and modern, Miami location.\n\nThe fully equipped kitchen and adjacent dining area are where you'll get to prepare and enjoy delicious meals with your loved ones before relaxing in the living room, setting the stage for memorable evenings. Plenty of natural light comes through the large windows, making the home very bright during the day, accenting the tastefully picked furniture, and enhancing the luxurious ambiance under the high ceilings. \n\nThe home is a smart house featuring Brilliant smart light switches all throughout the house as well as dimmable/color-changing Phillips Hue lights to set the mood to your liking, as well as in-ceiling speakers throughout the home so that you and your family can enjoy your favorite music throughout the day! Our wifi is rated for speeds up to 800mbps, which means ultra-fast internet speeds for your work and leisure.\n\nRetreat to three comfortable bedrooms, which feature 5\u2606-resort comforts that allow you to rest after an exciting day of Miami sightseeing and adventures.\n\nBut wait! The best is yet to come! Step out onto a fully fenced backyard, where you can soak up the sun by the large swimming pool, prepare delicious BBQ, and have hours of family fun by playing pool or various yard games.\n\nWhen you've had enough of the great outdoors, you'll be able to retreat to the garage game room and have a fun tournament to decide who takes the crown of the vacation pool champ or play some classic games on arcade machines.\n\nThere are numerous options in this gorgeous home. We are looking forward to you experiencing them all.\n\n\u2605 SMART HOME \u2605\n\nVilla Paradise is equipped with the latest smart-home features. Using the designated Brilliant Touch Screen Panel in the entryway and Touch smart switches throughout the home you can access a multitude of features to make your stay just that much better. Set the mood with our smart lights or enjoy the music with friends and family using our integrated Sonos ceiling speakers located in the Living Area and Game Room that can stream from your smartphone.\n \n\u2714Fully dimmable & color-changing lights from Warm to Cold white.\n\u2714High Definition Sonos Ceiling Speakers with Smart Phone streaming (Living Area and Game Room)\n\u27144K Smart TVs \n\u2714Dimmable Smart Light Switches\n\u2714Smart Bathroom Mirrors with Defogging and LED lighting\n\u2714Smart Washer and Dryer with Samsung AI technology\"\n\u2714Smart Frige with Auto-filling Water Pitcher\n\n\u2605 LIVING ROOM \u2605\nIt immediately feels like home! Find your place on the comfy sofa, cuddle up with a good book, watch a movie, or discuss your plans for the day.\n\n\u2714 Oversized L-Shaped Sofa with Pillows & Blankets\n\u2714 65\" Ultra HD 4K Smart TV with Netflix, Hulu, HBO max, and more\n\u2714 HD Sound Bar with Dolby Atmos and surround sound\n\u2714 Coffee Table\n\u2714 Access to the Backyard\n\u2714 Sofa sleeps an extra 2 people\n\n\u2605 KITCHEN & DINING \u2605\nIt is fully equipped with state-of-the-art cooking appliances that make it suitable for preparing any meal, whether a simple breakfast, a quick snack or a three-course gourmet dinner. Spacious quartz countertops and the central kitchen island provide plenty of room to work your MasterChef magic.\n\n\u2714 Microwave\n\u2714 Stove\n\u2714 Oven\n\u2714 Toaster\n\u2714 Blender\n\u2714 Hot Water Kettle\n\u2714 Coffee Corner (Regular Coffee Maker, Keuring Machine, Moka Pot)\n\u2714 Refrigerator/Freezer\n\u2714 Dishwasher\n\u2714 Sink - Hot & Cold Water\n\u2714 Trays\n\u2714 Glasses\n\u2714 Silverware\n\u2714 Pots & Pans\n\nHave a few drinks in the living room while the food is getting ready. Once it's done, serve it on the dining table and enjoy a tasty meal with your loved ones. Breakfasts, snacks, and smaller meals can easily be served on the inviting kitchen island.\n\n\u2714 Dining Table with Seating for 6\n\u2714 Kitchen Island with Seating for 3\n\n\u2605 SLEEPING ARRANGEMENTS \u2013 3 BEDROOMS \u2605\nAfter an exciting day in the city, you will be looking to rest for an equally entertaining tomorrow. Once you are ready to relax, please make your way to these comfortable bedrooms.\n\n\u265b Master Bedroom: King-Size Bed, 45\" Smart TV, Access to the Backyard\n\u265b Bedroom 2: Queen-Size Bed, 45\" Smart TV\n\u265b Bedroom 3: Two Bunk Beds (Twin over Twin)\n\u265b Living Room: Large Sectional sofa can sleep 2 \n\nAll bedrooms are equipped with a similar set of amenities.\n\n\u2714 Premium Pillows, Linens, and Sheets\n\u2714 Ultra HD 4K Smart TVs\n\u2714 Full-Size Mirrors\n\u2714 Closets with Hangers and Shelves\n\u2714 Night Stands with Reading Lamps\n\n\u2605 BATHROOMS \u2605\nBesides the ensuite bathroom of the master bedroom, the house features another full relaxing bathroom that caters to the remaining bedrooms and the living area. All are stocked with fresh towels and essential toiletries to ensure you have a carefree stay.\n\n\u2714 Walk-In Shower\n\u2714 Vanity (Double in the Master Bath)\n\u2714 Mirror\n\u2714 Toilet\n\u2714 Towels\n\u2714 Hair Dryer\n\u2714 Essential Toiletries\n\n\u2605 GAME ROOM \u2605\nCome to the entertaining garage to discover numerous relaxing and entertaining amenities. Be careful, though. You'll quickly lose track of time in this fun space! \n \n\u2714 Arcade Machines\n\u2714 Pool Table\n\u2714 Comfy Futon\n\n\u2605 BACKYARD \u2605\nA luxurious home like this would not shine in its best light if it did not have a private outdoor space where you can relax and enjoy soaking up the sun. Step out onto the fully fenced backyard, cool off in the large swimming pool, play various fun games while the designated BBQ master works their magic on the grill, and then light up the fire pit under the pergola and have a magical evening under the Florida sky.\n\n\u2714 Swimming Pool with Sun Lounges and Parasols\n\u2714 Pergola (Fire Pit Table, Lounge Seating, String Lights)\n\u2714 Covered Patio with Lounge Seating\n\u2714 BBQ Grill\n\nWe look forward to you finding your happiness in this breathtaking home. This could mean unplugging for a while, watching a movie, curling up on the sofa with a good book, or swimming in the backyard's gorgeous pool.",
        "sub_title": "Entire villa hosted by Michel",
        "num_bedrooms": 8,
        "num_baths": 2,
        "min_guests": 12,
        "size": "3 bedrooms",
        "city": "Miami",
        "state": "FL",
        "country": "United States",
        "listing_type": "villa",
        "ammenities": [
            "Garden view",
            "Kitchen",
            "Fast wifi \u2013 442 Mbps",
            "Dedicated workspace",
            "Free parking on premises",
            "Private outdoor pool - available all year, open 24 hours, lap pool, pool toys",
            "Pets allowed",
            "65\" HDTV with Amazon Prime Video, Apple TV, Disney+, HBO Max, Hulu, Netflix, premium cable, Roku, standard cable",
            "EV charger - level 2, tesla only",
            "Security cameras on property"
        ],
        "location_desc": "The house is nestled in a tranquil and family-friendly neighborhood in southern Miami, FL. It offers an ideal escape from the everyday hustle and bustle while allowing you to visit Miami's top restaurants, shops, entertainment, attractions, and landmarks.\n\nHere are some attractions you will surely be looking to visit.\n\n\u2714 Larry and Penny Thompson Memorial Park and Campground (8 min away)\n\u2714 By Brothers (11 min away)\n\u2714 Zoo Miami (12 min away)\n\u2714 Knaus Berry Farm (14 min away)\n\u2714 Coral Castle (18 min away)\n\u2714 Fairchild Tropical Botanic Garden (30 min away)\n\u2714 Miami International Airport (34 min away)\n\u2714 Downtown Miami (35 min away)\n\u2714 Design District (38 min away)\n\u2714 Jungle Island (40 min away)\n\u2714 P\u00e9rez Art Museum Miami (40 min away)\n\u2714 Everglades National Park (40 min away)\n\u2714 Brickell (44 min away)\n\u2714 Wynwood (44 min away)\n\u2714 South Beach (44 min away)\n\u2714 Vizcaya Museum & Gardens (44 min away)\n\u2714 Miami Seaquarium (45 min away)\n\n***Distance times are calculated if you are traveling by car.",
        "photo_urls": [
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/miami_photos/729895415924628131/image_5.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/miami_photos/729895415924628131/image_0.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/miami_photos/729895415924628131/image_3.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/miami_photos/729895415924628131/image_4.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/miami_photos/729895415924628131/image_2.jpg",
            "https://mybnb-app-dev.s3.us-west-2.amazonaws.com/miami_photos/729895415924628131/image_1.jpg"
        ],
        "coordinates": [
            25.738705682439196,
            -80.35229145204063
        ]
    }
]

miami_reviews = [
    [
        {
            "cleanliness": 4,
            "accuracy": 5,
            "communication": 4,
            "location": 2,
            "check_in": 5,
            "text": "This place is spectacular. We loved our stay at this cozy #villa. It had the most amazing view and the fresh air was so revitalizing. Our hosts were super communicative and made it so easy to check in and even provided a guest book with a list of things to do. We highly recommend this place!"
        },
        {
            "cleanliness": 2,
            "accuracy": 4,
            "communication": 2,
            "location": 5,
            "check_in": 5,
            "text": "Great neighborhood and a cozy place to stay! Parking isn\u2019t bad, you just need to know where to look."
        },
        {
            "cleanliness": 4,
            "accuracy": 3,
            "communication": 3,
            "location": 4,
            "check_in": 3,
            "text": "Very comfortable and clean space . Enjoyed my stay  and would definitely love to book again."
        }
    ],
    [
        {
            "cleanliness": 4,
            "accuracy": 3,
            "communication": 3,
            "location": 4,
            "check_in": 4,
            "text": "Very comfortable and clean space . Enjoyed my stay  and would definitely love to book again."
        }
    ],
    [
        {
            "cleanliness": 2,
            "accuracy": 4,
            "communication": 4,
            "location": 5,
            "check_in": 3,
            "text": "Beautiful #villa. Perfect with plenty of beds and easy lake access. Great deck and yard with a nearby bbq makes for a perfect evening! Close walk to town with a fun bar aswell."
        },
        {
            "cleanliness": 2,
            "accuracy": 3,
            "communication": 3,
            "location": 5,
            "check_in": 3,
            "text": "Very comfortable and clean space . Enjoyed my stay  and would definitely love to book again."
        },
        {
            "cleanliness": 3,
            "accuracy": 5,
            "communication": 3,
            "location": 2,
            "check_in": 5,
            "text": "Location is beautiful, location is amazing, communication was great, we had a wonderful weekend . Super kid friendly but would also stay with just adults. Great experience overall."
        },
        {
            "cleanliness": 5,
            "accuracy": 2,
            "communication": 3,
            "location": 4,
            "check_in": 2,
            "text": "The place was perfect for our family and friends visit to #Miami and also completing the Half Marathon. It was in a great location for easy access to the grocery store and within 30min of the south entrance to the park. The house had everything we needed and was exactly as described on the website. The views were amazing and the home was very comfortable. Would def stay here again."
        },
        {
            "cleanliness": 4,
            "accuracy": 3,
            "communication": 3,
            "location": 5,
            "check_in": 3,
            "text": "This place is spectacular. We loved our stay at this cozy #villa. It had the most amazing view and the fresh air was so revitalizing. Our hosts were super communicative and made it so easy to check in and even provided a guest book with a list of things to do. We highly recommend this place!"
        }
    ],
    [
        {
            "cleanliness": 2,
            "accuracy": 5,
            "communication": 5,
            "location": 4,
            "check_in": 4,
            "text": "This home is perfect for a big group. Our family of 16 gathered for grandpa's 80th birthday. We had a magical time. Weather was great so our time was mostly spent outside."
        },
        {
            "cleanliness": 2,
            "accuracy": 5,
            "communication": 4,
            "location": 5,
            "check_in": 2,
            "text": "Such a beautiful house in an even more beautiful location. Our host was an amazing host and gave excellent walking and dinner recommendations in the local area. Check in was super easy. "
        },
        {
            "cleanliness": 2,
            "accuracy": 3,
            "communication": 2,
            "location": 4,
            "check_in": 5,
            "text": "Beautiful #condo. Perfect with plenty of beds and easy lake access. Great deck and yard with a nearby bbq makes for a perfect evening! Close walk to town with a fun bar aswell."
        },
        {
            "cleanliness": 5,
            "accuracy": 3,
            "communication": 5,
            "location": 5,
            "check_in": 3,
            "text": "Very comfortable and clean space . Enjoyed my stay  and would definitely love to book again."
        },
        {
            "cleanliness": 5,
            "accuracy": 5,
            "communication": 3,
            "location": 5,
            "check_in": 2,
            "text": "The place was very clean and comfortable. It had a nice little setup of snacks and coffee pods (more than you would get in a similarly priced hotel room). "
        },
        {
            "cleanliness": 4,
            "accuracy": 3,
            "communication": 3,
            "location": 3,
            "check_in": 3,
            "text": "Great neighborhood and a cozy place to stay! Parking isn\u2019t bad, you just need to know where to look."
        }
    ],
    [
        {
            "cleanliness": 2,
            "accuracy": 2,
            "communication": 5,
            "location": 2,
            "check_in": 2,
            "text": "Beautiful #villa. Perfect with plenty of beds and easy lake access. Great deck and yard with a nearby bbq makes for a perfect evening! Close walk to town with a fun bar aswell."
        },
        {
            "cleanliness": 4,
            "accuracy": 5,
            "communication": 3,
            "location": 3,
            "check_in": 4,
            "text": "This home is perfect for a big group. Our family of 16 gathered for grandpa's 80th birthday. We had a magical time. Weather was great so our time was mostly spent outside."
        },
        {
            "cleanliness": 3,
            "accuracy": 3,
            "communication": 4,
            "location": 3,
            "check_in": 5,
            "text": "Very comfortable and clean space . Enjoyed my stay  and would definitely love to book again."
        },
        {
            "cleanliness": 4,
            "accuracy": 3,
            "communication": 2,
            "location": 4,
            "check_in": 3,
            "text": "The house was given to us not cleaned. Even when we requested maid service and they actually came they did not do a good job. They only sprayed Windex everywhere. The counters and the floors remained greasy and so are the bathrooms very disgustingGreat location with a large group. Absolutely had a fantastic time."
        },
        {
            "cleanliness": 3,
            "accuracy": 4,
            "communication": 5,
            "location": 2,
            "check_in": 4,
            "text": "Location is beautiful, location is amazing, communication was great, we had a wonderful weekend . Super kid friendly but would also stay with just adults. Great experience overall."
        }
    ],
    [
        {
            "cleanliness": 2,
            "accuracy": 5,
            "communication": 3,
            "location": 5,
            "check_in": 4,
            "text": "The house was given to us not cleaned. Even when we requested maid service and they actually came they did not do a good job. They only sprayed Windex everywhere. The counters and the floors remained greasy and so are the bathrooms very disgustingGreat location with a large group. Absolutely had a fantastic time."
        },
        {
            "cleanliness": 4,
            "accuracy": 2,
            "communication": 3,
            "location": 5,
            "check_in": 3,
            "text": "This home is perfect for a big group. Our family of 16 gathered for grandpa's 80th birthday. We had a magical time. Weather was great so our time was mostly spent outside."
        },
        {
            "cleanliness": 4,
            "accuracy": 5,
            "communication": 4,
            "location": 5,
            "check_in": 3,
            "text": "The place was perfect for our family and friends visit to #Miami and also completing the Half Marathon. It was in a great location for easy access to the grocery store and within 30min of the south entrance to the park. The house had everything we needed and was exactly as described on the website. The views were amazing and the home was very comfortable. Would def stay here again."
        },
        {
            "cleanliness": 4,
            "accuracy": 3,
            "communication": 3,
            "location": 4,
            "check_in": 3,
            "text": "Very comfortable and clean space . Enjoyed my stay  and would definitely love to book again."
        },
        {
            "cleanliness": 4,
            "accuracy": 2,
            "communication": 4,
            "location": 4,
            "check_in": 2,
            "text": "Great neighborhood and a cozy place to stay! Parking isn\u2019t bad, you just need to know where to look."
        },
        {
            "cleanliness": 2,
            "accuracy": 2,
            "communication": 5,
            "location": 5,
            "check_in": 3,
            "text": "Beautiful, clean home for multiple families to enjoy."
        },
        {
            "cleanliness": 2,
            "accuracy": 4,
            "communication": 2,
            "location": 4,
            "check_in": 5,
            "text": "Such a beautiful house in an even more beautiful location. Our host was an amazing host and gave excellent walking and dinner recommendations in the local area. Check in was super easy. "
        }
    ],
    [
        {
            "cleanliness": 5,
            "accuracy": 5,
            "communication": 5,
            "location": 4,
            "check_in": 3,
            "text": "Location is beautiful, location is amazing, communication was great, we had a wonderful weekend . Super kid friendly but would also stay with just adults. Great experience overall."
        },
        {
            "cleanliness": 5,
            "accuracy": 2,
            "communication": 4,
            "location": 4,
            "check_in": 4,
            "text": "Beautiful, clean home for multiple families to enjoy."
        }
    ],
    [
        {
            "cleanliness": 3,
            "accuracy": 5,
            "communication": 5,
            "location": 5,
            "check_in": 3,
            "text": "Location is beautiful, location is amazing, communication was great, we had a wonderful weekend . Super kid friendly but would also stay with just adults. Great experience overall."
        },
        {
            "cleanliness": 4,
            "accuracy": 5,
            "communication": 2,
            "location": 5,
            "check_in": 2,
            "text": "Beautiful, clean home for multiple families to enjoy."
        },
        {
            "cleanliness": 2,
            "accuracy": 3,
            "communication": 3,
            "location": 5,
            "check_in": 3,
            "text": "The place was perfect for our family and friends visit to #Miami and also completing the Half Marathon. It was in a great location for easy access to the grocery store and within 30min of the south entrance to the park. The house had everything we needed and was exactly as described on the website. The views were amazing and the home was very comfortable. Would def stay here again."
        },
        {
            "cleanliness": 5,
            "accuracy": 2,
            "communication": 4,
            "location": 5,
            "check_in": 2,
            "text": "The place was very clean and comfortable. It had a nice little setup of snacks and coffee pods (more than you would get in a similarly priced hotel room). "
        },
        {
            "cleanliness": 4,
            "accuracy": 4,
            "communication": 2,
            "location": 5,
            "check_in": 5,
            "text": "Such a beautiful house in an even more beautiful location. Our host was an amazing host and gave excellent walking and dinner recommendations in the local area. Check in was super easy. "
        },
        {
            "cleanliness": 2,
            "accuracy": 5,
            "communication": 5,
            "location": 3,
            "check_in": 3,
            "text": "Very comfortable and clean space . Enjoyed my stay  and would definitely love to book again."
        },
        {
            "cleanliness": 3,
            "accuracy": 5,
            "communication": 2,
            "location": 5,
            "check_in": 4,
            "text": "Quiet neighborhood, good location, everything was great!"
        }
    ],
    [
        {
            "cleanliness": 3,
            "accuracy": 2,
            "communication": 2,
            "location": 4,
            "check_in": 2,
            "text": "Location is beautiful, location is amazing, communication was great, we had a wonderful weekend . Super kid friendly but would also stay with just adults. Great experience overall."
        },
        {
            "cleanliness": 5,
            "accuracy": 3,
            "communication": 3,
            "location": 4,
            "check_in": 3,
            "text": "Beautiful, clean home for multiple families to enjoy."
        },
        {
            "cleanliness": 2,
            "accuracy": 2,
            "communication": 4,
            "location": 3,
            "check_in": 5,
            "text": "Very comfortable and clean space . Enjoyed my stay  and would definitely love to book again."
        },
        {
            "cleanliness": 2,
            "accuracy": 5,
            "communication": 4,
            "location": 5,
            "check_in": 3,
            "text": "Quiet neighborhood, good location, everything was great!"
        },
        {
            "cleanliness": 5,
            "accuracy": 4,
            "communication": 5,
            "location": 3,
            "check_in": 2,
            "text": "The place was perfect for our family and friends visit to #Miami and also completing the Half Marathon. It was in a great location for easy access to the grocery store and within 30min of the south entrance to the park. The house had everything we needed and was exactly as described on the website. The views were amazing and the home was very comfortable. Would def stay here again."
        }
    ],
    [
        {
            "cleanliness": 5,
            "accuracy": 2,
            "communication": 2,
            "location": 2,
            "check_in": 3,
            "text": "The place was very clean and comfortable. It had a nice little setup of snacks and coffee pods (more than you would get in a similarly priced hotel room). "
        },
        {
            "cleanliness": 4,
            "accuracy": 3,
            "communication": 4,
            "location": 2,
            "check_in": 4,
            "text": "This place is spectacular. We loved our stay at this cozy #rental. It had the most amazing view and the fresh air was so revitalizing. Our hosts were super communicative and made it so easy to check in and even provided a guest book with a list of things to do. We highly recommend this place!"
        },
        {
            "cleanliness": 3,
            "accuracy": 5,
            "communication": 5,
            "location": 3,
            "check_in": 5,
            "text": "Such a beautiful house in an even more beautiful location. Our host was an amazing host and gave excellent walking and dinner recommendations in the local area. Check in was super easy. "
        },
        {
            "cleanliness": 5,
            "accuracy": 4,
            "communication": 5,
            "location": 3,
            "check_in": 4,
            "text": "The house was given to us not cleaned. Even when we requested maid service and they actually came they did not do a good job. They only sprayed Windex everywhere. The counters and the floors remained greasy and so are the bathrooms very disgustingGreat location with a large group. Absolutely had a fantastic time."
        }
    ],
    [
        {
            "cleanliness": 4,
            "accuracy": 4,
            "communication": 2,
            "location": 2,
            "check_in": 4,
            "text": "Location is beautiful, location is amazing, communication was great, we had a wonderful weekend . Super kid friendly but would also stay with just adults. Great experience overall."
        }
    ],
    [
        {
            "cleanliness": 4,
            "accuracy": 3,
            "communication": 3,
            "location": 2,
            "check_in": 5,
            "text": "Such a beautiful house in an even more beautiful location. Our host was an amazing host and gave excellent walking and dinner recommendations in the local area. Check in was super easy. "
        },
        {
            "cleanliness": 3,
            "accuracy": 2,
            "communication": 3,
            "location": 2,
            "check_in": 4,
            "text": "Great neighborhood and a cozy place to stay! Parking isn\u2019t bad, you just need to know where to look."
        }
    ],
    [
        {
            "cleanliness": 5,
            "accuracy": 3,
            "communication": 4,
            "location": 2,
            "check_in": 3,
            "text": "Great neighborhood and a cozy place to stay! Parking isn\u2019t bad, you just need to know where to look."
        },
        {
            "cleanliness": 3,
            "accuracy": 4,
            "communication": 4,
            "location": 2,
            "check_in": 2,
            "text": "The place was perfect for our family and friends visit to #Miami and also completing the Half Marathon. It was in a great location for easy access to the grocery store and within 30min of the south entrance to the park. The house had everything we needed and was exactly as described on the website. The views were amazing and the home was very comfortable. Would def stay here again."
        }
    ],
    [
        {
            "cleanliness": 4,
            "accuracy": 5,
            "communication": 2,
            "location": 2,
            "check_in": 3,
            "text": "Great neighborhood and a cozy place to stay! Parking isn\u2019t bad, you just need to know where to look."
        },
        {
            "cleanliness": 3,
            "accuracy": 5,
            "communication": 5,
            "location": 5,
            "check_in": 4,
            "text": "The place was perfect for our family and friends visit to #Miami and also completing the Half Marathon. It was in a great location for easy access to the grocery store and within 30min of the south entrance to the park. The house had everything we needed and was exactly as described on the website. The views were amazing and the home was very comfortable. Would def stay here again."
        },
        {
            "cleanliness": 2,
            "accuracy": 3,
            "communication": 4,
            "location": 4,
            "check_in": 5,
            "text": "Beautiful, clean home for multiple families to enjoy."
        }
    ],
    [
        {
            "cleanliness": 3,
            "accuracy": 4,
            "communication": 5,
            "location": 5,
            "check_in": 4,
            "text": "This place is spectacular. We loved our stay at this cozy #villa. It had the most amazing view and the fresh air was so revitalizing. Our hosts were super communicative and made it so easy to check in and even provided a guest book with a list of things to do. We highly recommend this place!"
        },
        {
            "cleanliness": 4,
            "accuracy": 2,
            "communication": 5,
            "location": 2,
            "check_in": 4,
            "text": "The place was very clean and comfortable. It had a nice little setup of snacks and coffee pods (more than you would get in a similarly priced hotel room). "
        },
        {
            "cleanliness": 2,
            "accuracy": 3,
            "communication": 5,
            "location": 5,
            "check_in": 4,
            "text": "Quiet neighborhood, good location, everything was great!"
        },
        {
            "cleanliness": 5,
            "accuracy": 2,
            "communication": 3,
            "location": 3,
            "check_in": 5,
            "text": "The house was given to us not cleaned. Even when we requested maid service and they actually came they did not do a good job. They only sprayed Windex everywhere. The counters and the floors remained greasy and so are the bathrooms very disgustingGreat location with a large group. Absolutely had a fantastic time."
        },
        {
            "cleanliness": 5,
            "accuracy": 2,
            "communication": 5,
            "location": 3,
            "check_in": 4,
            "text": "Such a beautiful house in an even more beautiful location. Our host was an amazing host and gave excellent walking and dinner recommendations in the local area. Check in was super easy. "
        },
        {
            "cleanliness": 5,
            "accuracy": 5,
            "communication": 5,
            "location": 2,
            "check_in": 2,
            "text": "This home is perfect for a big group. Our family of 16 gathered for grandpa's 80th birthday. We had a magical time. Weather was great so our time was mostly spent outside."
        },
        {
            "cleanliness": 3,
            "accuracy": 2,
            "communication": 3,
            "location": 3,
            "check_in": 3,
            "text": "The place was perfect for our family and friends visit to #Miami and also completing the Half Marathon. It was in a great location for easy access to the grocery store and within 30min of the south entrance to the park. The house had everything we needed and was exactly as described on the website. The views were amazing and the home was very comfortable. Would def stay here again."
        },
        {
            "cleanliness": 3,
            "accuracy": 4,
            "communication": 3,
            "location": 5,
            "check_in": 4,
            "text": "Very comfortable and clean space . Enjoyed my stay  and would definitely love to book again."
        }
    ],
    [
        {
            "cleanliness": 5,
            "accuracy": 2,
            "communication": 3,
            "location": 2,
            "check_in": 4,
            "text": "Beautiful, clean home for multiple families to enjoy."
        },
        {
            "cleanliness": 4,
            "accuracy": 4,
            "communication": 3,
            "location": 4,
            "check_in": 4,
            "text": "Very comfortable and clean space . Enjoyed my stay  and would definitely love to book again."
        },
        {
            "cleanliness": 4,
            "accuracy": 4,
            "communication": 3,
            "location": 4,
            "check_in": 3,
            "text": "The house was given to us not cleaned. Even when we requested maid service and they actually came they did not do a good job. They only sprayed Windex everywhere. The counters and the floors remained greasy and so are the bathrooms very disgustingGreat location with a large group. Absolutely had a fantastic time."
        },
        {
            "cleanliness": 4,
            "accuracy": 5,
            "communication": 3,
            "location": 5,
            "check_in": 5,
            "text": "This place is spectacular. We loved our stay at this cozy #condo. It had the most amazing view and the fresh air was so revitalizing. Our hosts were super communicative and made it so easy to check in and even provided a guest book with a list of things to do. We highly recommend this place!"
        },
        {
            "cleanliness": 3,
            "accuracy": 2,
            "communication": 4,
            "location": 5,
            "check_in": 4,
            "text": "Beautiful #condo. Perfect with plenty of beds and easy lake access. Great deck and yard with a nearby bbq makes for a perfect evening! Close walk to town with a fun bar aswell."
        },
        {
            "cleanliness": 4,
            "accuracy": 4,
            "communication": 2,
            "location": 5,
            "check_in": 4,
            "text": "Such a beautiful house in an even more beautiful location. Our host was an amazing host and gave excellent walking and dinner recommendations in the local area. Check in was super easy. "
        },
        {
            "cleanliness": 4,
            "accuracy": 2,
            "communication": 2,
            "location": 2,
            "check_in": 2,
            "text": "The place was perfect for our family and friends visit to #Miami and also completing the Half Marathon. It was in a great location for easy access to the grocery store and within 30min of the south entrance to the park. The house had everything we needed and was exactly as described on the website. The views were amazing and the home was very comfortable. Would def stay here again."
        }
    ],
    [
        {
            "cleanliness": 4,
            "accuracy": 2,
            "communication": 4,
            "location": 5,
            "check_in": 2,
            "text": "This place is spectacular. We loved our stay at this cozy #serviced. It had the most amazing view and the fresh air was so revitalizing. Our hosts were super communicative and made it so easy to check in and even provided a guest book with a list of things to do. We highly recommend this place!"
        }
    ],
    [
        {
            "cleanliness": 5,
            "accuracy": 3,
            "communication": 4,
            "location": 2,
            "check_in": 2,
            "text": "Great neighborhood and a cozy place to stay! Parking isn\u2019t bad, you just need to know where to look."
        }
    ]
]

puts "CREATING MIAMI LISTINGS"
listings = []
users = []

miami_listing_objects.each do |listing|
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

puts "MIAMI LISTINGS COMPLETE"
puts "CREATING MIAMI REVIEWS"

miami_reviews.each_with_index do |review_array,i|
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

puts "MIAMI REVIEWS COMPLETE"
puts "DONE"