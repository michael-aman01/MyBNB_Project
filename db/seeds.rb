
ApplicationRecord.transaction do 
    puts "Destroying tables..."
    # Unnecessary if using `rails db:seed:replant`
    User.destroy_all
  
    puts "Resetting primary keys..."
    # For easy testing, so that after seeding, the first `User` has `id` of 1
    ApplicationRecord.connection.reset_pk_sequence!('users')
  
    puts "Creating users..."
    # Create one user with an easy to remember username, email, and password:
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
  
    # More users
    10.times do 
      User.create!({
        first_name: "tester",
        last_name: "test",
        email: Faker::Internet.unique.email,
        password: 'password'
      }) 
    end
  
    puts "Done!"
  end