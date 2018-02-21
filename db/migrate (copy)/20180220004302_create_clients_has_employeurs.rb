class CreateClientsHasEmployeurs < ActiveRecord::Migration[5.1]
  def change
    create_table :clients_has_employeurs do |t|
      t.integer :Clients_id
      t.integer :Employeurs_id
      t.date :DateDebut
      t.date :DateFin

      t.timestamps
    end
  end
end
