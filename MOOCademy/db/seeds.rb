#fichier seeds crée les tables Course et Students aléatoiremant grace a la gem Faker

require 'faker'


100.times do
    Course.create(title: Faker::Book.title, description: Faker::Seinfeld.quote )
end

500.times do
    a = Course.find(rand(1..100))
    Lesson.create(course_id: a.id, title: Faker::Science.element, 
    body: Faker::StarTrek.villain )
end
