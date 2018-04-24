#fichier seeds crée les tables User , Pin et Comments aléatoiremant grace a la gem Faker
require 'faker'

10.times do |i|
    User.create(name: Faker::Simpsons.character)
end

100.times do |i|
    a = User.find(rand(1..10))
    Pin.create(user_id: a.id, url: Faker::Internet.url)
end

1000.times do |i|
    b = Pin.find(rand(1..100))
    Comment.create(pin_id: b.id, body: Faker::HitchhikersGuideToTheGalaxy.quote)
end
