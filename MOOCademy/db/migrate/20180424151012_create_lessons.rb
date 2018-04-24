#fichier de migration de la table Lessons
#dit comment créer la table
#indique qu elle dépend de la table Courses
#indique qu elle a comme parametres :body qui est de format "string"(chaine de caractére).

class CreateLessons < ActiveRecord::Migration[5.2]
  def change
    create_table :lessons do |t|
      t.string :title
      t.text :body
      t.belongs_to :course, index: true
      t.timestamps
    end
  end
end
