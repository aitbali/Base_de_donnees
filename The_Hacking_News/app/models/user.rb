#modele pour la table Users
#indique comment créer la table
#on indique qu elle associe plusieurs urls à chaque User.



class User < ApplicationRecord
    has_many :urls, dependent: :destroy
end
