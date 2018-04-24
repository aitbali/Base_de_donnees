# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

10.times do
    User.create(name: Faker::Simpsons.character)
end

20.times do
    a = User.find(rand(1..10))
    Url.create(user_id: a.id, url: Faker::Internet.url)
end

100.times do 
    b = Url.find(rand(1..100))
    c = Comment.find(rand(1..100))
    Comment.create(url_id: b.id, comment_id: c.id, body: Faker::Seinfeld.quote)
end


