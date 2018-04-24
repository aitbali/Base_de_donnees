# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
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
