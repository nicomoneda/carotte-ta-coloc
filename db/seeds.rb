Task.destroy_all
User.destroy_all
Coloc.destroy_all
dream_coloc = Coloc.create(name: "dreamteam")


lucas =     User.create(coloc: dream_coloc, email: 'lboitier@gmail.com',  password: 'lucascar',      name: 'Lucas', avatar: 'lucas.png')
nico =      User.create(coloc: dream_coloc, email: 'nbraun@gmail.com',  password: 'nicolascar',    name: 'Nicolas', avatar: 'nico.png')
louis =     User.create(coloc: dream_coloc, email: 'llafon@gmail.com',    password: 'louiscar',      name: 'Louis', avatar: 'louis.png')
guillaume = User.create(coloc: dream_coloc, email: 'gdore@gmail.com', password: 'guillaumecar',  name: 'Guillaume', avatar: 'guillaume.png')


Task.create(coloc: dream_coloc,  name: "Vider le verre" ,     description: "Le plus chiant, c'est pas de vider le verre, c'est de trouver le container...", points: 50, carotte_card_name: "joker", carotte_card_points: 60, image: 'verre.png', image_done: 'verre_done.png')

Task.create(coloc: dream_coloc,  name: "Faire les courses" , description: "N'oublie rien sur la liste", points: 45, carotte_card_name: "joker", carotte_card_points: 55, image: 'courses.png', image_done: 'courses_done.png')

Task.create(coloc: dream_coloc,  name: "Sortir le chien" , description: "Miskine si il fait ses gros besoins", points: 40, carotte_card_name: "joker", carotte_card_points: 50, image: 'chien.png', image_done: 'chien_done.png')

Task.create(coloc: dream_coloc,  name: "Passer la serpière" , description: "À l'eau chaude stp", points: 35, carotte_card_name: "joker", carotte_card_points: 45, image: 'mop.png')

Task.create(coloc: dream_coloc,  name: "Laver la Salle de Bain" , description: "Oublie pas d'enlever les poils", points: 30, carotte_card_name: "joker", carotte_card_points: 40, image: 'bath.png', image_done: 'bath_done.png')

Task.create(coloc: dream_coloc,  name: "Laver les vitres" , description: "Miroir Miroir", points: 25, carotte_card_name: "joker", carotte_card_points: 35, image: 'vitre.png', image_done: 'vitre_done.png')

Task.create(coloc: dream_coloc,  name: "Passer l'aspi" , description: "Même sous les meubles", points: 20, carotte_card_name: "joker", carotte_card_points: 30, image: 'aspi.png', image_done: 'aspi_done.png')

Task.create(coloc: dream_coloc,  name: "Sortir les poubelles" , description: "Pense au tri mskn", points: 15, carotte_card_name: "joker", carotte_card_points: 25, image: 'poubelle.png', image_done: 'poubelle_verre.png')


FunCard.create(name: "APEROOOOOO",      description: "C'est l'apéro ! Let's go !",                  points: 150)
FunCard.create(name: "Dégagez !",       description: "Tout le monde dehors, l'appart est à moi !",  points: 250)
FunCard.create(name: "Soirée film",     description: "Ptit film pour ce soir",                      points: 100)

