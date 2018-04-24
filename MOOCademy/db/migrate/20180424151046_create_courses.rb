#fichier de migration de la table Courses
#dit comment créer la table
#indique qu elle a comme parametres :title qui est de format "string"(chaine de caractére).

class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
