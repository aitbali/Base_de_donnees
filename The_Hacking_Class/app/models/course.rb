
#modele pour la table Courses 
#on indique qu elle associe plusieurs étudiants (students) à chaque cours.

class Course < ApplicationRecord
    has_many :students
end
