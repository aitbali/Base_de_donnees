#fichier de migration de la table Url
#dis comment créer la table
#indique qu elle dépend de la table Users
#indique qu elle a comme parametres :url qui est de format "string"(chaine de caractére).



class CreateUrls < ActiveRecord::Migration[5.2]
  def change
    create_table :urls do |t|
      t.belongs_to :user
      t.string :url
      t.timestamps
    end
  end
end
