#modele pour la table Comments
#on indique qu elle associe plusieurs commentaires  (students) à chaque pins.

class Comment < ApplicationRecord
    belongs_to :pin, required: false
end
