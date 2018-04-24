#fichier de migration de la table Pins
#dis comment créer la table
#indique qu elle dépend de la table Users
#indique qu elle a comme parametres :url qui est de format "string"(chaine de caractére).

class CreatePins < ActiveRecord::Migration[5.2]
  def change
    create_table :pins do |t|
      t.string :url
      t.belongs_to :user, index: true
      t.timestamps
    end
  end
end
