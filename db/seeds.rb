
# ApplicationRecord.transaction do 
#   puts "Destroying tables..."
#   # Unnecessary if using `rails db:seed:replant`
#   User.destroy_all

#   puts "Resetting primary keys..."
#   # For easy testing, so that after seeding, the first `User` has `id` of 1
#   ApplicationRecord.connection.reset_pk_sequence!('users')

#   puts "Creating users..."
#   # Create one user with an easy to remember username, email, and password:
#   User.create!(
#     first_name: "tester",
#     last_name: "test",
#     email: 'demo@user.io', 
#     password: 'password'
#   )

#   User.create!(
#     first_name: "tester",
#     last_name: "test",
#     email: 'test@gmail.com',
#     password: "password"
#   )

#   # More users
#   10.times do 
#     User.create!({
#       first_name: "tester",
#       last_name: "test",
#       email: Faker::Internet.unique.email,
#       password: 'password'
#     }) 
#   end



# Listing.create!({
#               id: 1,
#               user_id: 1,
#               street_address: '123 sesame st.',
#               city: 'San Rafael',
#               zip_code: '94901',
#               state: 'California',
#               country: 'USA',
#               listing_type: 'apartment',
#               max_guests: 12,
#               price: 998,
#               cleaning_fee: 375,
#               description: 'About this space
# Reverse pandemic blues at this retreat charged 4 bedroom haven with an authentic Finnish sauna, canal-front jacuzzi consciousness, paddleboards, a tandem kayak, replete comfy zones to lazily exchange conversation.
# The tranquility of the canal will replace all Debbie downer thoughts with a symphony of luminous relaxation, bound to bedazzle wary minds and hearts.
# The space
# Tastefully furnished on the inside, this villa features 4 bedrooms with king or queen size beds, 2.5 bathrooms, two tuned grand pianos for dueling it out, and within a few minute paddle to the bay. After a few hours here you’ll forget about any invisible enemy that has destroyed the basic hug! Great for team building and corporate or family retreats! No parties allowed. Long-term rental an option.
# Guest access
# The entire property , entire first floor, entire front courtyard, backyard with pool and spa and BBQ area, deck area where boat is docked. Paddleboards and Kayak accessible. Boat is not included in rental.
# Other things to note
# The host can arrange additional cleaning service for guests staying long-term (5 days or more).

# The 2.5 bathrooms included three showers and one soaking tub and half bath

# If rules are not honored, guests will be asked to leave and will not receive a refund from the host. It is significant to note that due to some bad apples in the past, we are enforcing rules with greater scrutiny, and ask for honesty and transparency in an effort to help honor and preserve the tranquility of the community, especially with homes across the canal that absorb amplified sound that travels across the canal. Thank you for respecting our community!

# PARKING : 2-4 parking spots available in driveway (depending on your advanced Tetris skills ). No more than 3
# cars can park on the street. There are 24 hour parking spots on the street if you can find parking or you may park over night in public parking in the adjacent park parking lot.
# No ragers allowed.
# Family gathering or smaller civilized gatherings are allowed pending a conversation and clarity on safety guidelines.',
# num_bedrooms: 4,
# num_beds: 4,
# num_baths: 2.5
# })
# puts "Done!"
# end

def add_listings
  ApplicationRecord.transaction do 
    puts "start"

    system("ls")
    Dir.foreach("./db/seeds/listings") do |f|
      file_path = "#{File.dirname(__FILE__)}/seeds/listings/#{f}"
      if  f.split(".").include?("json")
        data = JSON.parse(File.open(file_path).read)
        Listing.create!({
          user_id:  rand(1...10),
          image_id:  data["id"],
          city: data["city"],
          cleaning_fee: data["price"] * 1.5,
          price: data["price"],
          state: data["state"],
          listing_type: data["type"],
          country: "United States",
          num_bedrooms: data["num_bedrooms"],
          num_beds: rand(1...3),
          num_baths: data["num_baths"],
          description: data["info"],
          title: data["title"],
          max_guests: data["guests"]
      })
      puts "DONE ADDING LISTINGS"
      end
    end
    end

end
def add_images
  listings = Listing.all
  listings.slice(1...listings.length).each do |listing|
    image_id = listing['image_id'] #for path to json
    listing_id =  listing["id"]
    user_id = listing["user_id"]

    file_path = "#{File.dirname(__FILE__)}/seeds/listings/#{image_id}.json"
    if  file_path.split(".")[0].length > 1
      data = JSON.parse(File.open(file_path).read)
      # puts data["bucket_urls"]
      data["bucket_urls"].each do |url|
        image_obj = {user_id: user_id, image_url: url, listings_id: listing_id}
        Image.create!(image_obj)
      end
    end
  end
end
add_images()
