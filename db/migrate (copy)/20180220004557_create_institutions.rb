class CreateInstitutions < ActiveRecord::Migration[5.1]
  def change
    create_table :institutions do |t|
      t.integer :id
      t.string :Nom
      t.integer :Adresses_id

      t.timestamps
    end
  end
end
