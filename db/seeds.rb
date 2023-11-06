require 'faker'

# Create an hash with associated last and first name
team_players = [
  ["Nellote", "With Stilts", "Je suis Nelly. Je termine actuellement une année sabbatique  de voyage en Amérique du Sud après avoir travaillé une dizaine d’années dans une grosse boite de conseil où j’ai principalement eu un rôle de product owner sur des projets digitaux."],
  ["Flo", "Head Shot", "Je m'appelle Floriane, Flo c'est mieux sauf si vous êtes ma grand-mère. J'ai 36 ans, je vis à Toulouse mais originaire de l'Essonne. Après le cursus data, je signe à nouveau et cette fois pour Fullstack."],
  ["Sam", "TheWatcher aka You", "Sam, 27 ans, autant d'années passées à Paris 😭
  Je commence la formation développeur demain! Ps. J'ai aussi une grosse passion pour les profils facebook des gens..."],
  ["Alex", "Aka Gustavo Chiki", "Moi c'est Alex 34 ans et je suis de Fos Sur Mer dans le 13"],
  ["Axel", "La Merguez", "27 ans, j'ai bossé pendant 6 ans dans un domaine super intéressant, de haute technologie (les laser 🚨 ) sur Bordeaux."],
  ["Vincent", "Aka Maître Yoda", "Élève promo printemps 2023, j'ai explosé le game et du coup comme j'avais un peu de temps perdu je me suis dit que j'allais pouvoir martyriser un ou deux moussailons avec mes lignes de code propres et efficaces !"]
]

#now create each user
team_players.shuffle.each do |player|
  first_name = player[0]
  last_name = player[1]
  description = player[2]

  email = "#{first_name.downcase}.#{last_name.downcase.tr(' ', '_').tr('é', 'e').tr('î', 'i')}@yopmail.com"
  # tr replace space in last name by underscore

  User.create!(
    email: email,
    description: description,
    first_name: first_name,
    last_name: last_name)
end