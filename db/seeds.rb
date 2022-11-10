
# ApplicationRecord.transaction do 
#   puts "Destroying tables..."
#   # Unnecessary if using `rails db:seed:replant`
#   Listing.destroy_all
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
#   12.times do 
#     User.create!({
#       first_name: Faker::Name.first_name,
#       last_name: Faker::Name.last_name,
#       email: Faker::Internet.unique.email,
#       password: 'password'
#     }) 
#   end


#   puts "Creating listings..."
# l = Listing.create({
#               user_id: 1,
#               main_title: "Luxurious Apartment w Breathtaking Views",
#               sub_title: "Large apartment",
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

# # image = File.open("#{File.dirname(__FILE__)}/seeds/image_12.jpg")
# # listing.images.attach(io: image, filename: "image_12.jpg")
# puts "Done!"
# end

def add_listings
  ApplicationRecord.transaction do 
  puts "Destroying tables..."
  # Unnecessary if using `rails db:seed:replant`
  Listing.destroy_all

  puts "Resetting primary keys..."
  # For easy testing, so that after seeding, the first `User` has `id` of 1
  ApplicationRecord.connection.reset_pk_sequence!('listings')

  puts "Creating listings..."
    count = 0
    image_dirs = Dir.foreach('/home/michael/aa_projects/MyBNB/app/assets/photos').map {|d| "/home/michael/aa_projects/MyBNB/app/assets/photos/#{d}"}.slice(1...-3)
  
    Dir.foreach("./db/seeds/listings") do |f|
      file_path = "#{File.dirname(__FILE__)}/seeds/listings/#{f}"
      if  f.split(".").include?("json")
        data = JSON.parse(File.open(file_path).read)
        l = Listing.create({
          
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
          main_title: data["title"],
          sub_title: "sub",
          ammenities: ["ammenities"],
          max_guests: data["guests"],
          
      })


       file_path = Dir.foreach(image_dirs[count]).map{|d| "#{image_dirs[count]}/#{d}"}[1]
       count += 1

        image = File.open(file_path)
        l.images.attach(io: image, filename: "image_1.jpg")
        l.save!
        puts image
   
        puts "DONE ADDING LISTINGS"
      end
    end
  end
end

add_listings()