class CreateAdresses < ActiveRecord::Migration[5.1]
  def change
    create_table :adresses do |t|
      t.integer :id
      t.string :NumeroCivique
      t.string :Rue
      t.char :CodePostal
      t.string :Ville
      t.string :Procince

      t.timestamps
    end
  end
end
