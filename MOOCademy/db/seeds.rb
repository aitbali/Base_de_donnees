# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'


100.times do
    Course.create(title: Faker::Book.title, description: Faker::Seinfeld.quote )
end

500.times do
    a = Course.find(rand(1..100))
    Lesson.create(course_id: a.id, title: Faker::Science.element, 
    body: Faker::StarTrek.villain )
end
