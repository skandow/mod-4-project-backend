# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


newUser = User.create(username: "MyFirstUser", email: "user1@user.com", age: 25, gender: "male", image_url: "none")

note1 = Note.create(title: "My First Note", content: "What a great note!", completed: false, starred: false, user_id: 1)
note2 = Note.create(title: "My Second Note", content: "This is still a good note!", completed: false, starred: true, user_id: 1)