# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Task.destroy_all
User.destroy_all
Coloc.destroy_all
Coloc.create(id: 1, name: "dreamteam")


lucas =     User.create(coloc_id: 1, email: 'lucas.boitier@gmail.com',  password: 'carotte-lucas',      name: 'Lucas')
nico =      User.create(coloc_id: 1, email: 'nicolas.braun@gmail.com',  password: 'carotte-nicolas',    name: 'Nicolas')
louis =     User.create(coloc_id: 1, email: 'louis.lafon@gmail.com',    password: 'carotte-louis',      name: 'Louis')
guillaume = User.create(coloc_id: 1, email: 'guillaume.dore@gmail.com', password: 'carotte-guillaume',  name: 'Guillaume')


Task.create(coloc_id: 1,  name: "Ranger les vêtements et les chaussures" ,     description: "Ce n'est pas rangé au bon endroit ? Tans pis pour eux, ça n'avait pas qu'à trainer !",
                          points: 20, carotte_card_name: "joker", carotte_card_description: "Vous carrottez votre coloc", carotte_card_points: 40)
Task.create(coloc_id: 1,  name: "Faire les courses" ,                          description: "Faites un effort, n'achetez pas seulement des pates",
                          points: 15, carotte_card_name: "joker", carotte_card_description: "Vous carrottez votre coloc", carotte_card_points: 30)
Task.create(coloc_id: 1,  name: "Sortir/vider la poubelle" ,                   description: "Hop hop ! Ca vous fera les bras !",
                          points: 12, carotte_card_name: "joker", carotte_card_description: "Vous carrottez votre coloc", carotte_card_points: 24)
Task.create(coloc_id: 1,  name: "Epousseter" ,                                 description: "Attention, chutes d'araigné possible",
                          points: 11, carotte_card_name: "joker", carotte_card_description: "Vous carrottez votre coloc", carotte_card_points: 22)
Task.create(coloc_id: 1,  name: "Battre un tapis" ,                            description: "Pensez à le faire à l'extérieur" ,
                          points: 5,  carotte_card_name: "joker", carotte_card_description: "Vous carrottez votre coloc", carotte_card_points: 10)
Task.create(coloc_id: 1,  name: "Passer la serpillère" ,                       description: "Ne transformez pas votre colloc en piscine !" ,
                          points: 30, carotte_card_name: "joker", carotte_card_description: "Vous carrottez votre coloc", carotte_card_points: 60)
Task.create(coloc_id: 1,  name: "Balayer/Passer l'aspirateur",                 description: "Et on n'oublie pas de passer sous les meubles !" ,
                          points: 30, carotte_card_name: "joker", carotte_card_description: "Vous carrottez votre coloc", carotte_card_points: 60)
Task.create(coloc_id: 1,  name: "Nettoyer la salle de bains/les toilettes" ,   description: "Bon chance..." ,
                          points: 90, carotte_card_name: "joker", carotte_card_description: "Vous carrottez votre coloc", carotte_card_points: 180)
Task.create(coloc_id: 1,  name: "Laver les vitres" ,                           description: "Si on se la mange en pleine figure, c'est bon signe" ,
                          points: 50, carotte_card_name: "joker", carotte_card_description: "Vous carrottez votre coloc", carotte_card_points: 100)
Task.create(coloc_id: 1,  name: "Arroser/Soigner les plantes" ,                description: "Carressez la dans le sens de la feuille" ,
                          points: 7,  carotte_card_name: "joker", carotte_card_description: "Vous carrottez votre coloc", carotte_card_points: 14)