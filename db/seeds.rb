# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "destroy all"
Gage.destroy_all

puts "Créer gage"
engueuler = Gage.new(name: "Engueule quelqu'un gratos !")
engueuler.photo = Rails.root.join("app/assets/images/giphy1.gif").open
engueuler.audio = Rails.root.join("app/assets/images/SLV.mp3").open
engueuler.save

euro = Gage.new(name: "1€ à chaque merci d'ici ce soir !")
euro.photo = Rails.root.join("app/assets/images/giphy1.gif").open
euro.audio = Rails.root.join("app/assets/images/PQTME.mp3").open
euro.save

place = Gage.new(name: "File ta place, vas ailleurs !")
place.photo = Rails.root.join("app/assets/images/giphy1.gif").open
place.audio = Rails.root.join("app/assets/images/EUS.mp3").open
place.save

chante = Gage.new(name: "Ils chantent pour toi !")
chante.photo = Rails.root.join("app/assets/images/giphy1.gif").open
chante.audio = Rails.root.join("app/assets/images/JOTI.mp3").open
chante.save

voisin = Gage.new(name: "Demande à ton voisin de faire quelque chose pour toi !")
voisin.photo = Rails.root.join("app/assets/images/giphy1.gif").open
voisin.audio = Rails.root.join("app/assets/images/RM.mp3").open
voisin.save

voeu = Gage.new(name: "Fais un voeu !")
voeu.photo = Rails.root.join("app/assets/images/giphy1.gif").open
voeu.audio = Rails.root.join("app/assets/images/PP.mp3").open
voeu.save

puts "traitement fini"
