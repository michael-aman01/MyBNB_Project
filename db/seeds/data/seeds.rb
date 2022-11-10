
ApplicationRecord.transaction do 
    puts "Destroying tables..."

    Listing.destroy_all
    User.destroy_all

    puts "Resetting primary keys..."
    ApplicationRecord.connection.reset_pk_sequence!('listings')
    
    puts "Creating users..."



u1 =    User.create!({
      first_name: Faker::Name.first_name,
      last_name: Faker::Name.last_name,
      email: Faker::Internet.unique.email,
      password: 'password'
    }) 

l1 = Listing.create({
  "price": 363,
  "title": "Entire villa hosted by Luisa & Justin",
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
  "user_id": 1,
  "main_title": "Spacious Room in the heart of North Beach",
  "sub_title": "Entire villa hosted by Luisa & Justin",
  "space_type": "3 bedrooms",
  "cleaning_fee": 544.5,
  "service_fee": 272.25,
  "max_guests": 6
})

l1_image_1 = File.open("#{File.dirname(__FILE__)}/MyBNB/db/seeds/data/1/image_12.jpg")
l1_image_2 = File.open("#{File.dirname(__FILE__)}/MyBNB/db/seeds/data/1/image_13.jpg")
l1_image_3 = File.open("#{File.dirname(__FILE__)}/MyBNB/db/seeds/data/1/image_14.jpg")
l1_image_4 = File.open("#{File.dirname(__FILE__)}/MyBNB/db/seeds/data/1/image_15.jpg")
l1_image_5 = File.open("#{File.dirname(__FILE__)}/MyBNB/db/seeds/data/1/image_16.jpg")

l1.images.attach(io: l1_image_1,filename: "image.jpg").save!
l1.images.attach(io: l1_image_2,filename: "image.jpg").save!
l1.images.attach(io: l1_image_3,filename: "image.jpg").save!
l1.images.attach(io: l1_image_4,filename: "image.jpg").save!
l1.images.attach(io: l1_image_5,filename: "image.jpg").save!

puts "Done!"
endisting.create!({
  "price": 363,
  "title": "Entire villa hosted by Luisa & Justin",
  "num_bedrooms": 3,
  "num_baths": 2,
  "space_type": "3 bedrooms",
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
  "description": [
      "info"
  ],
  "user_id": 1,
  "main_title": "Spacious Room in the heart of North Beach",
  "sub_title": "Entire villa hosted by Luisa & Justin",
  "property_type": "3 bedrooms",
  "cleaning_fee": 544.5,
  "service_fee": 272.25,
  "max_guests": 6
})

# l.images.attach(io: image = File.open(file_path)
# l.images.attach(io: image, filename: "image_1.jpg")
# l.save!

