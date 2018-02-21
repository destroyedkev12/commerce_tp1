class CreateClientsHasConjoints < ActiveRecord::Migration[5.1]
  def change
    create_table :clients_has_conjoints do |t|
      t.integer :Clients_id
      t.integer :Clients_Conjoint_id
      t.date :DateDebut
      t.date :DateFin

      t.timestamps
    end
  end
end
