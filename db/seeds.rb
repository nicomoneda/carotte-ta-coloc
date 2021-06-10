Task.destroy_all
User.destroy_all
Coloc.destroy_all
FunCard.destroy_all
Consommation.destroy_all

dream_coloc = Coloc.create(name: "dreamteam")


lucas =     User.create(coloc: dream_coloc, email: 'monica@gmail.com',  password: 'azerty',      name: 'Monica', avatar: 'monica.jpg')
nico =      User.create(coloc: dream_coloc, email: 'joey@gmail.com',  password: 'azerty',    name: 'Joey', avatar: 'joey.jpg')
louis =     User.create(coloc: dream_coloc, email: 'rachel@gmail.com',    password: 'azerty',      name: 'Rachel', avatar: 'rachel.jpg')
guillaume = User.create(coloc: dream_coloc, email: 'chandler@gmail.com', password: 'azerty',  name: 'Chandler', avatar: 'chandler.jpg')


Task.create(coloc: dream_coloc,  name: "Vider le verre" ,     description: "Le plus chiant, c'est pas de vider le verre, c'est de trouver le container...", points: 50, carotte_card_name: "joker", carotte_card_points: 60, image: 'verre.png', image_done: 'verre_done.png')
Task.create(coloc: dream_coloc,  name: "Faire les courses" , description: "N'oublie pas les carottes, on sait tous que t'aime ça !", points: 45, carotte_card_name: "joker", carotte_card_points: 55, image: 'courses.png', image_done: 'courses_done.png')
Task.create(coloc: dream_coloc,  name: "Sortir le chien" , description: "Les sacs sont sous l'évier ;)", points: 40, carotte_card_name: "joker", carotte_card_points: 50, image: 'chien.png', image_done: 'chien_done.png')
Task.create(coloc: dream_coloc,  name: "Passer la serpillère" , description: "Monica aime quand ça brille", points: 35, carotte_card_name: "joker", carotte_card_points: 45, image: 'mop.png', image_done: 'mop_done.png')
Task.create(coloc: dream_coloc,  name: "Laver la SDB" , description: "Oublie pas d'enlever les poils de Joey", points: 30, carotte_card_name: "joker", carotte_card_points: 40, image: 'bath.png', image_done: 'bath_done.png')
Task.create(coloc: dream_coloc,  name: "Laver les vitres" , description: "Pour que Rachel puisse bien se regarder", points: 25, carotte_card_name: "joker", carotte_card_points: 35, image: 'vitre.png', image_done: 'vitre_done.png')
Task.create(coloc: dream_coloc,  name: "Passer l'aspi" , description: "Quand tu veux sauf le dimanche", points: 20, carotte_card_name: "joker", carotte_card_points: 30, image: 'aspi.png', image_done: 'aspi_done.png')
Task.create(coloc: dream_coloc,  name: "Sortir les poubelles" , description: "Le tri sélectif consiste, comme son nom l'indique, à trier les déchets.", points: 15, carotte_card_name: "joker", carotte_card_points: 25, image: 'poubelle.png', image_done: 'poubelle_verre.png')


FunCard.create(name: "Tout le monde dehors",       description: "Je réserve l'appart pour une soirée privée !", points: 250, image: 'good_bye.png')
FunCard.create(name: "Apéro",      description: "C'est l'apéro ! J'invite des potes", points: 150, image: 'apero_time.png')
FunCard.create(name: "No Wifi",         description: "Quelqu'un télécharge ?", points: 100, image: 'stop_wifi.png')
FunCard.create(name: "À moi la télé !",     description: "Shotgun ! C'est moi qui choisi ce qu'on regarde", points: 90, image: 'tv.png')
FunCard.create(name: "La meilleure place",     description: "Désolé les gars, mais ce soir j'suis allongé", points: 70, image: 'couch_seat.png')


FunCard.create(name: "Virer un coloc'",     description: "La sentence est irrévocable", points: 1000, image: 'adieu_coloc.png')


