# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Task.destroy_all

# Tâches pour le linge
Task.create(name: "Laver le linge/Faire la lessive" , description: "" , points: 12 , image:)
Task.create(name: "Etendre le linge" , description: "" , points: 10 , image:)
Task.create(name: "Plier le linge" , description: "" , points: 10 , image:)
Task.create(name: "Repasser" , description: "" , points: 10 , image:)
Task.create(name: "Ranger les vêtements et les chaussures" , description: "" , points: 12 , image:)

# Tâches pour la nourriture
Task.create(name: "Faire les courses" , description: "" , points: 10 , image:)
Task.create(name: "Cuisiner" , description: "" , points: 10 , image:)
Task.create(name: "Mettre la table" , description: "" , points: 10 , image:)
Task.create(name: "Débarasser la table" , description: "" , points: 10 , image:)
Task.create(name: "Faire la vaisselle" , description: "" , points: 10 , image:)
Task.create(name: "Sortir/vider la poubelle" , description: "" , points: 10 , ima)

# Tâches pour le ménage
Task.create(name: "Balayer" , description: "" , points: 10 , image:)
Task.create(name: "Epousseter" , description: "" , points: 10 , image:)
Task.create(name: "Battre un tapis" , description: "" , points: 10 , image:)
Task.create(name: "Nettoyer le plancher" , description: "" , points: 10 , image:)
Task.create(name: "Passer l'aspirateur" , description: "" , points: 10 , image:)
Task.create(name: "Nettoyer la salle de bains/les toilettes" , description: "" , points: 10 , image:)
Task.create(name: "Laver les vitres" , description: "" , points: 10 , image:)

# Tâches autres
Task.create(name: "Bricoler" , description: "" , points: 10 , image:)
Task.create(name: "Coudre" , description: "" , points: 10 , image:)
Task.create(name: "Tondre le gazon" , description: "" , points: 10 , image:)
Task.create(name: "Arroser/Soigner les plantes" , description: "" , points: 10 , image:)
Task.create(name: "Laver la voiture" , description: "" , points: 10 , image:)

# Tâches optionnelles
Task.create(name: "Ranger sa chambre/le salon" , description: "" , points: 10 , image:)
Task.create(name: "Faire son lit" , description: "" , points: 10 , image:)



