#fichier de migration de la table Users
#dis comment créer la table 
#indique qu elle a comme parametres :name qui est de format "string"(chaine de caractére).

class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.timestamps
    end
  end
end
