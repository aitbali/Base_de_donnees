#fichier de migration de la table Students
#dis comment créer la table Students
#indique qu elle dépend de la table Courses
#indique qu elle a comme parametres :name qui est de format "string"(chaine de caractére).


class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.belongs_to :course, index: true
      t.string :name
      t.timestamps
    end
  end
end
