class CreateEmployeurs < ActiveRecord::Migration[5.1]
  def change
    create_table :employeurs do |t|
      t.string :Nom
      t.integer :Adresses_id

      t.timestamps
    end
  end
end
