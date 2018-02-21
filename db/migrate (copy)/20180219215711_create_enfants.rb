class CreateEnfants < ActiveRecord::Migration[5.1]
  def change
    create_table :enfants do |t|
      t.integer :id
      t.string :Prenom
      t.string :Nom
      t.date :DateNaissance

      t.timestamps
    end
  end
end
