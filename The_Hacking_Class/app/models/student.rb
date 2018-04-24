#modele pour la table Students 
#on indique qu elle associe un seul cours par etudiant . 

class Student < ApplicationRecord
    has_one :course, required: false
end
