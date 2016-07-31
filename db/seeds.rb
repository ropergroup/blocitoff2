require 'rubygems'
require 'faker'
#require 'activerecord'


# Create Users
#10.times do

   #User.create!(
     #email: Faker::Internet.email,
     #password: Faker::Internet.password)
 #end
 #current_users = User.all

 # Create Items
 50.times do

   Item.create!(
     name: Faker::Commerce.product_name
   )
 end
 items = Item.all


 puts "Seed finished"
 puts "#{Item.count} items created"
 puts "#{User.count} users created"
