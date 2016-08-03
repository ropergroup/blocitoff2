require 'faker'


# Create Users
10.times do

  User.create!(
  email: Faker::Internet.email,
  password: Faker::Internet.password
  )
  end
  users = User.all

# Create Items
50.times do

  Item.create!(
  user: users.sample,
  name: Faker::Commerce.product_name
  )
  end
  items = Item.all


 puts "Seed finished"
 puts "#{Item.count} items created"
 puts "#{User.count} users created"
