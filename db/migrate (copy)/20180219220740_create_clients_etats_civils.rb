class CreateClientsEtatsCivils < ActiveRecord::Migration[5.1]
  def change
    create_table :clients_etats_civils do |t|
      t.integer :Clients_id
      t.integer :EtatsCivil_id
      t.date :DateDebut
      t.date :DateFin

      t.timestamps
    end
  end
end
