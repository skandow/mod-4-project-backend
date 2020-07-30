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

# note1 = Note.create(title: "My First Note", content: "What a great note!", starred: false, user_id: 1)
# note2 = Note.create(title: "My Second Note", content: "This is still a good note!", starred: true, user_id: 1)



# User.delete_all
# Note.delete_all
# Course.delete_all

# ActiveRecord::Base.connection.execute("DELETE from sqlite_sequence where name = 'users'")
# ActiveRecord::Base.connection.execute("DELETE from sqlite_sequence where name = 'notes'")
# ActiveRecord::Base.connection.execute("DELETE from sqlite_sequence where name = 'courses'")

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

TITLES = ["The Meaning of Life", "Gone With the Wind", "My Teacher's Favorite Thing", "Why Am I Here?", "Enough of This", "When is the Exam?", "I'm So Sleepy..."]
VERDICT1 = [true, false, false, false, false]

# User.all.each do |user|
#     dates_array = []
#     date = Date.today - 20
#     while date != Date.today
#         dates_array << date.strftime("%A, %B %-d, %Y")
#         date += 1 
#     end 
#     dates_array.each do |date|
#         Note.create(title: TITLES.sample, content: Faker::Movie.quote, starred: VERDICT1.sample, user_id: User.all.sample.id)
#     end
# end  

User.all.each do |user|
    TITLES.each do |title|
        Note.create(title: title, content: Faker::Movie.quote, starred: VERDICT1.sample, user_id: user.id)
    end
end  

# firstLog = DailyLog.create(status: "complete", title: "Sunday, July 5, 2020")
# secondLog = DailyLog.create(status: "complete", title: "Monday, July 6, 2020")
# thirdLog = DailyLog.create(status: "complete", title: "Tuesday, July 7, 2020")


# VERDICT2 = [true, false, false, false, false, false, false, false, false, false]