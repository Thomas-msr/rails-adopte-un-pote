# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

TAGS = ['Expo', 'Concert', 'Boire un verre', "Vélo", "Poney", "Jeux vidéos", "Cinéma", "Sport"]

puts "Cleaning database..."
Tag.destroy_all
Offer.destroy_all
User.destroy_all
Meeting.destroy_all


puts "Creating tags..."
TAGS.each do |tag|
  Tag.create!(name: tag)
end

puts "Creating users..."
User.create!(first_name: "Baptiste", last_name: "Josse", city: "Bordeaux", age: 29, email: "baptiste@gmail.com", password: "secret", description: "Salut moi c'est Baptiste, j'aime l'aventure et le code !! Je peux devenir ton ami contre une petite compensation financière :) A pluusss ! " ,avatar_url:"https://scontent-cdt1-1.xx.fbcdn.net/v/t1.0-9/20292681_10211935177968045_3900832542794430335_n.jpg?_nc_cat=101&ccb=3&_nc_sid=0debeb&_nc_ohc=LepZDhv_flQAX9gRpzk&_nc_ht=scontent-cdt1-1.xx&oh=bcc447badba35e3684d3e335af05e112&oe=60524335")
User.create!(first_name: "Thomas", last_name: "Moessner", city: "Bordeaux", age: 28, email: "totodu33@gmail.com", password: "secret", avatar_url:"https://ca.slack-edge.com/T02NE0241-U01JASARRND-2749c28ba94d-512")
User.create!(first_name: "Cyrielle", last_name: "Gout", city: "Bordeaux", age: 25, email: "cyrielle@gmail.com", password: "secret", avatar_url:"https://ca.slack-edge.com/T02NE0241-U01J4HUUB6G-4bd88b49390d-512")
User.create!(first_name: "Alexandre", last_name: "Madeleine", city: "Bordeaux", age: 21, email: "alex@gmail.com", password: "secret", avatar_url: "https://ca.slack-edge.com/T02NE0241-U01JD3D89CH-c479e937dfeb-512")
User.create!(first_name: "Bertrand", last_name: "Bussac", city: "Bordeaux", age: 36, email: "bb@gmail.com", password: "secret", avatar_url: "https://ca.slack-edge.com/T02NE0241-U03UPH1K6-d2c11a26c57f-512")


puts "Adding tags to users..."
TagsUser.create!(user_id: 1, tag_id: 1)
TagsUser.create!(user_id: 1, tag_id: 2)
TagsUser.create!(user_id: 1, tag_id: 3)
TagsUser.create!(user_id: 2, tag_id: 4)
TagsUser.create!(user_id: 2, tag_id: 5)
TagsUser.create!(user_id: 3, tag_id: 6)
TagsUser.create!(user_id: 3, tag_id: 7)
TagsUser.create!(user_id: 3, tag_id: 8)

TagsUser.create!(user_id: 4, tag_id: 1)
TagsUser.create!(user_id: 4, tag_id: 2)
TagsUser.create!(user_id: 4, tag_id: 3)
TagsUser.create!(user_id: 4, tag_id: 4)
TagsUser.create!(user_id: 4, tag_id: 5)
TagsUser.create!(user_id: 4, tag_id: 6)


puts "Creating offers..."
Offer.create!(title: "Je suis un aventurier sans limites", availabilities: "Dispo les weekends", user_id: 1)
Offer.create!(title: "J'ai besoin de thunes", availabilities: "Dispo tout le temps", user_id: 2)
Offer.create!(title: "Hello ! ", availabilities: "Dispo les weekends", user_id: 3)
Offer.create!(title: "Je suis trop cool", availabilities: "Dispo tout le temps", user_id: 4)
Offer.create!(title: "Hâte de te reoncontrer :)", availabilities: "Dispo les weekends", user_id: 5)
Offer.create!(title: "Le poney c'est super", availabilities: "Dispo tout le temps", user_id: 2)
Offer.create!(title: "Je suis un aventurier sans limites", availabilities: "Dispo les weekends", user_id: 3)
Offer.create!(title: "J'ai besoin de thunes", availabilities: "Dispo tout le temps", user_id: 4)

puts "Creating meetings..."

Meeting.create!(status: "pending", user_id: 2, offer_id:1)
Meeting.create!(status: "pending", user_id: 3, offer_id:1)
Meeting.create!(status: "pending", user_id: 1, offer_id:2)
Meeting.create!(status: "pending", user_id: 3, offer_id:2)

puts "Creating reviews..."

Review.create!(rating: 5, content: "trop cool", destinataire: 2, user_id: 1, meeting_id: 3)
Review.create!(rating: 4.5, content: "trop chouette", destinataire: 1, user_id: 2, meeting_id: 3)
puts "Finished!"



