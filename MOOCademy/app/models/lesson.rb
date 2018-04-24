#modele pour la table Lesson
#on indique qu elle associe plusieurs leçons à chaque cours.

class Lesson < ApplicationRecord
    belongs_to :course, required: false
end
