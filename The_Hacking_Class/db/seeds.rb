# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'



100.times do 
   
    Course.create( name:Faker::StarWars.droid)
end

25.times do
    a = Course.find(rand(1..100))
    Student.create(course_id: a.id,name: Faker::Simpsons.character)
end