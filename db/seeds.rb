# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

TAGS = ['expo', 'concert', 'boire un verre', "vélo", "poney"]


puts "Cleaning database..."
Tag.destroy_all
Offer.destroy_all
User.destroy_all

puts "Creating tags..."
TAGS.each do |tag|
  Tag.create!(name: tag)
end

puts "Creating users..."
User.create!(first_name: "Baptiste", last_name: "Josse", city: "Bordeaux", email: "baptiste@gmail.com", password: "secret", avatar_url:"https://imgsrc.cineserie.com/2019/05/disney-repousse-encore-avatar-2-et-date-3-nouveaux-films-star-wars.jpg?ver=1")
User.create!(first_name: "Thomas", last_name: "Moessner", city: "Paris", email: "totodu33@gmail.com", password: "secret")

puts "Adding tags to users..."
TagsUser.create!(user_id: 1, tag_id: 1)
TagsUser.create!(user_id: 1, tag_id: 2)
TagsUser.create!(user_id: 1, tag_id: 3)
TagsUser.create!(user_id: 2, tag_id: 4)
TagsUser.create!(user_id: 2, tag_id: 5)

puts "Creating offers..."
Offer.create!(title: "Je suis un aventurier sans limites", availabilities: "Dispo les weekends", user_id: 1)
Offer.create!(title: "J'ai besoin de thunes", availabilities: "Dispo tout le temps", user_id: 2)

puts "Finished!"
