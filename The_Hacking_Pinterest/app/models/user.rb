#modele pour la table User 
#on indique qu elle associe plusieurs pins) à chaque User.

class User < ApplicationRecord
    has_many :pins, dependent: :destroy
end
