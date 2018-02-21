class CreateClientsHasEnfants < ActiveRecord::Migration[5.1]
  def change
    create_table :clients_has_enfants do |t|
      t.integer :Enfants_id
      t.integer :Clients_id
      t.integer :Lien

      t.timestamps
    end
  end
end
