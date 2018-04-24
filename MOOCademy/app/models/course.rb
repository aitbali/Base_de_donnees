#modele pour la table Courses 


class Course < ApplicationRecord
    has_many :lessons, dependent: :destroy
end
