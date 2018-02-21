class CreateEtatsCivils < ActiveRecord::Migration[5.1]
  def change
    create_table :etats_civils do |t|
      t.integer :id

      t.timestamps
    end
  end
end
