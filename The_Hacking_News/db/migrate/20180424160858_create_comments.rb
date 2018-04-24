class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.belongs_to :url
      t.belongs_to :comment
      t.string :body
      t.timestamps
    end
  end
end
