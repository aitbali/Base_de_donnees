#modele pour la table Pin
#on indique qu elle associe plusieurs commentaires à chaque pins.
#indique qu elle associe plusieurs pins a chaque User.

class Pin < ApplicationRecord
    belongs_to :user, required: false
    has_many :comments
end
