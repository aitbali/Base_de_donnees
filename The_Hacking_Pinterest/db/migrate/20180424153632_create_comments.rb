#fichier de migration de la table Comments
#dis comment créer la table
#indique qu elle dépend de la table Pins
#indique qu elle a comme parametres :body qui est de format "text"(longue chaine de caractére).

class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.text :body
      t.belongs_to :pin , index: true
      t.timestamps
    end
  end
end
