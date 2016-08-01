require 'faker'


# Create Users
rand(4..10).times do
  password = Faker::Lorem.characters(10)
  u = User.new(
    email: Faker::Internet.email,
    password: password,
    password_confirmation: password)
  u.skip_confirmation!
  u.save
end

 # Create Items
 50.times do

   Item.new(
     name: Faker::Commerce.product_name
   )
 end
 items = Item.all


 puts "Seed finished"
 puts "#{Item.count} items created"
 puts "#{User.count} users created"
