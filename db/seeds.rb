# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
require 'database_cleaner'
DatabaseCleaner.clean_with(:truncation)

newUser = User.create(username: "Steven", password: "pa$sword", email: "user1@user.com", age: 34, gender: "male", image_url: Faker::Avatar.image)

25.times do 
    rando = rand(18..40)
    User.create(username: Faker::Name.name, 
        password: "pa$sw0rd",
        email: "email@email.com",
        age: rando,
        gender: Faker::Gender.binary_type,
        image_url: Faker::Avatar.image
        )
end 

TITLES = ["Enumerables in Ruby", "Using Sinatra", "Redux Thunk: What I Thunk About It", "Client Side Routing", "Using Rails as an API", "React Components", "What is React Native"]
VERDICT = [true, false, false, false, false]

User.all.each do |user|
    TITLES.each do |title|
        Note.create(title: title, content: Faker::Lorem.paragraphs, starred: VERDICT.sample, user_id: user.id)
    end
end  
