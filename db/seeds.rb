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
User.create!(first_name: "Baptiste", last_name: "Josse", city: "Bordeaux", age: 29, email: "baptiste@gmail.com", password: "secret", description: "Salut moi c'est Baptiste, j'aime l'aventure et le code !! Je peux devenir ton ami contre une petite compensation financière :) A pluusss ! " ,avatar_url:"https://scontent-cdt1-1.xx.fbcdn.net/v/t1.0-9/20292681_10211935177968045_3900832542794430335_n.jpg?_nc_cat=101&ccb=3&_nc_sid=0debeb&_nc_ohc=LepZDhv_flQAX9gRpzk&_nc_ht=scontent-cdt1-1.xx&oh=bcc447badba35e3684d3e335af05e112&oe=60524335",init_tags:[1,2,4])
User.create!(first_name: "Thomas", last_name: "Moessner", city: "Bordeaux", age: 28, email: "totodu33@gmail.com", password: "secret", avatar_url:"https://ca.slack-edge.com/T02NE0241-U01JASARRND-2749c28ba94d-512",init_tags:[4,5,7])
User.create!(first_name: "Cyrielle", last_name: "Gout", city: "Bordeaux", age: 25, email: "cyrielle@gmail.com", password: "secret", avatar_url:"https://ca.slack-edge.com/T02NE0241-U01J4HUUB6G-4bd88b49390d-512",init_tags:[6,3,1])
User.create!(first_name: "Alexandre", last_name: "Madeleine", city: "Bordeaux", age: 21, email: "alex@gmail.com", password: "secret", avatar_url: "https://ca.slack-edge.com/T02NE0241-U01JD3D89CH-c479e937dfeb-512",init_tags:[1,2,4,5,7])
User.create!(first_name: "Bertrand", last_name: "Bussac", city: "Bordeaux", age: 36, email: "bb@gmail.com", password: "secret", avatar_url: "https://ca.slack-edge.com/T02NE0241-U03UPH1K6-d2c11a26c57f-512",init_tags:[1,2,4,8,7])
User.create!(first_name: "Gabriel", last_name: "soleil", city: "Bordeaux", age: 56, email: "soleil@gmail.com", password: "secret", avatar_url: "https://avatars.githubusercontent.com/u/75898175?v=4",init_tags:[1,2])
User.create!(first_name: "Quentin", last_name: "martini", city: "Paris", age: 16, email: "eloise@gmail.com", password: "secret", avatar_url: "https://avatars.githubusercontent.com/u/71469503?v=4",init_tags:[1,2,4])
User.create!(first_name: "Marc", last_name: "sylvestre", city: "Bordeaux", age: 26, email: "anna@gmail.com", password: "secret", avatar_url: "https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1609785052/rg5aplaftnnyhgndwg2t.jpg",init_tags:[1,2,3])
User.create!(first_name: "Bryan", last_name: "bloublou", city: "Paris", age: 46, email: "cesar@gmail.com", password: "secret", avatar_url: "https://avatars.githubusercontent.com/u/72919817?v=4",init_tags:[1])
User.create!(first_name: "Vladimir", last_name: "pour", city: "Lyon", age: 46, email: "wlad@gmail.com", password: "secret", avatar_url: "https://i2.wp.com/conakryinfos.com/wp-content/uploads/2019/06/vladimir-poutine.jpg?fit=704%2C469&ssl=1",init_tags:[1,2,4])
User.create!(first_name: "Maxime", last_name: "danger", city: "Bordeaux", age: 46, email: "danger@gmail.com", password: "secret", avatar_url: "https://avatars.githubusercontent.com/u/16257160?v=4",init_tags:[1,2,4])
User.create!(first_name: "Walter", last_name: "black", city: "Albuquerque", age: 46, email: "walter@gmail.com", password: "secret", avatar_url: "https://pbs.twimg.com/media/CVFOyjMWIAAvwrH.jpg",init_tags:[1,7,4,3])
User.create!(first_name: "Antoine", last_name: "bloublou", city: "Paris", age: 46, email: "antoine@gmail.com", password: "secret", avatar_url: "https://avatars.githubusercontent.com/u/76948184?v=4",init_tags:[5,1,6])
User.create!(first_name: "Benoit", last_name: "bloublou", city: "Paris", age: 46, email: "benoit@gmail.com", password: "secret", avatar_url: "https://avatars.githubusercontent.com/u/76852790?v=4",init_tags:[5,1,6])
User.create!(first_name: "Benjamin", last_name: "bloublou", city: "Paris", age: 46, email: "benjamin@gmail.com", password: "secret", avatar_url: "https://avatars.githubusercontent.com/u/74560415?v=4",init_tags:[5,1,6])


puts "Creating offers..."
Offer.create!(title: "Je suis un aventurier sans limites", availabilities: "Dispo les weekends", user_id: 1)
Offer.create!(title: "J'ai besoin de thunes", availabilities: "Dispo tout le temps", user_id: 2)
Offer.create!(title: "On a mangé des Lu, et c'était pas des biscuits", availabilities: "Dispo tout le temps", user_id: 4)
Offer.create!(title: "Hâte de te rencontrer :)", availabilities: "Dispo les weekends", user_id: 5)
Offer.create!(title: "Je suis un aventurier sans limites", availabilities: "Dispo les weekends", user_id: 3)
Offer.create!(title: "J'ai lu votre rapport annuel et j'ai remarquer qu'on et pas encore pote", availabilities: "Dispo les vendredis soir", user_id: 8)
Offer.create!(title: "Les plus anciens amis sont les meilleurs.", availabilities: "Dispo les vendredis", user_id: 6)
Offer.create!(title: "La valeur d'un homme tient dans sa capacité à donner et moi je peux donner mon amitié", availabilities: "Dispo les weekens", user_id: 7)
Offer.create!(title: "Tout a un prix mon amitié aussi", availabilities: "Dispo les mardis", user_id: 11)
Offer.create!(title: "Sois plus fort que ta flemme", availabilities: "Dispo les lundi", user_id: 13)
Offer.create!(title: "J'aime cuisiner avec mon pote Jessie", availabilities: "Dispo les apres-midi", user_id: 12)
Offer.create!(title: "C’est pour une personne comme vous que je me lave les dents et mets une chemise chaque matin !", availabilities: "Dispo les lundi", user_id: 10)
Offer.create!(title: "Que diriez-vous de prendre un rendez-vous pour parler de notre amitié", availabilities: "Dispo les lundis apres-midi", user_id: 9)
Offer.create!(title: "La valeur d'un homme ne se mesure qu'a son amitié", availabilities: "Dispo les lundis apres-midi", user_id: 14)


puts "Creating meetings..."

Meeting.create!(status: "pending", user_id: 2, offer_id:1)
Meeting.create!(status: "pending", user_id: 3, offer_id:1)
Meeting.create!(status: "pending", user_id: 1, offer_id:2)
Meeting.create!(status: "pending", user_id: 3, offer_id:2)
Meeting.create!(status: "pending", user_id: 4, offer_id:9)
Meeting.create!(status: "pending", user_id: 6, offer_id:8)
puts "Finished!"



