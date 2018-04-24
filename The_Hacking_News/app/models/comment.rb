#fichier model de la table Comments
#indique comment créer la table
#indique que chaque commentaire est associé à un url
#indique qu elle associe plusieurs commentaires a chaque commentaire


class Comment < ApplicationRecord
    belongs_to :url, required: false
    has_many :comments
end
