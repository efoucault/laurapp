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

bent = Gage.new(name: "Garde 5 min le poing levé !")
bent.photo = Rails.root.join("app/assets/images/bentgif.gif").open
bent.audio = Rails.root.join("app/assets/images/bent.mp3").open
bent.save

sardou = Gage.new(name: "Chante ce que tu es en train de faire !")
sardou.photo = Rails.root.join("app/assets/images/sardougif.gif").open
sardou.audio = Rails.root.join("app/assets/images/sardou.mp3").open
sardou.save

thriller = Gage.new(name: "Fais la choré !")
thriller.photo = Rails.root.join("app/assets/images/thrillergif.gif").open
thriller.audio = Rails.root.join("app/assets/images/thriller.mp3").open
thriller.save

johnny = Gage.new(name: "Plus le droit de parler pendant 10 min !")
johnny.photo = Rails.root.join("app/assets/images/johnnygif.gif").open
johnny.audio = Rails.root.join("app/assets/images/johnny.mp3").open
johnny.save

rois = Gage.new(name: "Imite le chien puis le loup !")
rois.photo = Rails.root.join("app/assets/images/roisgif.gif").open
rois.audio = Rails.root.join("app/assets/images/rois.mp3").open
rois.save

piano = Gage.new(name: "Reste debout 10 minutes !")
piano.photo = Rails.root.join("app/assets/images/pianogif.gif").open
piano.audio = Rails.root.join("app/assets/images/piano.mp3").open
piano.save

puts "traitement fini"
