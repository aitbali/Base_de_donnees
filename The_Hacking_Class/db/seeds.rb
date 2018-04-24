#fichier seeds crée les tables Course et Students aléatoiremant grace a la gem Faker

require 'faker'



100.times do 
   
    Course.create( name:Faker::StarWars.droid)
end

25.times do
    a = Course.find(rand(1..100))
    Student.create(course_id: a.id,name: Faker::Simpsons.character)
end