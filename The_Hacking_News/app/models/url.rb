#modele pour la table Url
#indique comment créer la table
#indique que chaque Url est associé à un User
#on indique qu elle associe plusieurs commentaires à chaque Url.



class Url < ApplicationRecord
    belongs_to :user , required: false
    has_many :comments, dependent: :destroy
end
