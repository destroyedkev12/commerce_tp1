class CreateClients < ActiveRecord::Migration[5.1]
  def change
    create_table :clients do |t|
      t.integer :id
      t.string :Prenom
      t.string :Nom
      t.date :DateNaissance
      t.char :NAS
      t.integer :adresses_id
      t.integer :NombreEnfants
      t.string :CompteTaxesProprietaire
      t.string :integer

      t.timestamps
    end
  end
end
