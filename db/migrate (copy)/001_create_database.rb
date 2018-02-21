class CreateDatabase < ActiveRecord::Migration[5.1]
  def self.up
	ActiveRecord::Schema.define(version: 0) do

	  create_table "Adresses", id: :integer, default: nil, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
		t.string "NumeroCivique", limit: 45, null: false
		t.string "Rue", limit: 45, null: false
		t.string "CodePostal", limit: 6, null: false
		t.string "Ville", null: false
		t.string "Procince", null: false
	  end

	  create_table "Clients", id: :integer, default: nil, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
		t.string "Prenom", limit: 45, null: false
		t.string "Nom", limit: 45, null: false
		t.datetime "DateNaissance", null: false
		t.string "NAS", limit: 9, null: false
		t.integer "Adresses_id", null: false
		t.integer "NombreEnfants", default: 0, null: false
		t.integer "CompteTaxesProprietaire", default: -1, null: false, comment: "par défaut, la personne/client est locataire, donc ce champ est à -1"
		t.index ["Adresses_id"], name: "fk_Clients_Adresses_idx"
	  end

	  create_table "Clients_EtatsCivils", primary_key: ["Clients_id", "EtatsCivil_id"], force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
		t.integer "Clients_id", null: false
		t.integer "EtatsCivil_id", null: false
		t.datetime "DateDebut", null: false
		t.datetime "DateFin"
		t.index ["Clients_id"], name: "fk_Clients_has_EtatsCivil_Clients1_idx"
		t.index ["EtatsCivil_id"], name: "fk_Clients_has_EtatsCivil_EtatsCivil1_idx"
	  end

	  create_table "Clients_Has_Conjoints", primary_key: ["Clients_id", "Clients_Conjoint_id"], force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
		t.integer "Clients_id", null: false
		t.integer "Clients_Conjoint_id", null: false
		t.datetime "DateDebut", null: false
		t.datetime "DateFin"
		t.index ["Clients_Conjoint_id"], name: "fk_Clients_has_Clients_Conjoints_idx"
		t.index ["Clients_id", "Clients_Conjoint_id"], name: "fk_Clients_has_Clients_Clients1_idx"
	  end

	  create_table "Clients_Has_Enfants", primary_key: ["Enfants_id", "Clients_id"], force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
		t.integer "Enfants_id", null: false
		t.integer "Clients_id", null: false
		t.boolean "Lien", null: false
		t.index ["Clients_id"], name: "fk_Enfants_has_Clients_Clients1_idx"
		t.index ["Enfants_id"], name: "fk_Enfants_has_Clients_Enfants1_idx"
	  end

	  create_table "Clients_has_Employeurs", primary_key: ["Clients_id", "Employeurs_id"], force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
		t.integer "Clients_id", null: false
		t.integer "Employeurs_id", null: false
		t.datetime "DateDebut", null: false
		t.datetime "DateFin"
		t.index ["Clients_id"], name: "fk_Clients_has_Employeurs_Clients1_idx"
		t.index ["Employeurs_id"], name: "fk_Clients_has_Employeurs_Employeurs1_idx"
	  end

	  create_table "Employeurs", primary_key: ["id", "Adresses_id"], force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
		t.integer "id", null: false
		t.string "Nom", null: false
		t.integer "Adresses_id", null: false
		t.index ["Adresses_id"], name: "fk_Institutions_Adresses1_idx"
	  end

	  create_table "Enfants", id: :integer, default: nil, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
		t.string "Nom", limit: 45, null: false
		t.string "Prenom", limit: 45, null: false
		t.datetime "DateNaissance", null: false
	  end

	  create_table "EtatsCivils", id: :integer, default: nil, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
		t.string "type", limit: 45, null: false
	  end

	  create_table "Etudes", id: :integer, default: nil, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
		t.string "SecteurEtudes", limit: 45, null: false
		t.string "Niveau", limit: 45, null: false
		t.datetime "DateDebut", null: false
		t.datetime "DateComplition"
		t.integer "Clients_id", null: false
		t.integer "Institutions_id", null: false
		t.index ["Clients_id"], name: "fk_Etudes_Clients1_idx"
		t.index ["Institutions_id"], name: "fk_Etudes_Institutions1_idx"
	  end

	  create_table "Institutions", primary_key: ["id", "Adresses_id"], force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
		t.integer "id", null: false
		t.string "Nom", null: false
		t.integer "Adresses_id", null: false
		t.index ["Adresses_id"], name: "fk_Institutions_Adresses1_idx"
	  end

	  create_table "Versions", id: :integer, comment: "table pour sauvegarder plusieurs versions d'un même enregistrement", default: nil, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
		t.string "item_type", null: false
		t.integer "item_id", null: false
		t.string "event", null: false
		t.string "description", null: false
		t.text "object", null: false
		t.datetime "created_at", null: false
	  end

	  add_foreign_key "Clients", "Adresses", column: "Adresses_id", name: "fk_Clients_Adresses"
	  add_foreign_key "Clients_EtatsCivils", "Clients", column: "Clients_id", name: "fk_Clients_has_EtatsCivil_Clients1"
	  add_foreign_key "Clients_EtatsCivils", "EtatsCivils", name: "fk_Clients_has_EtatsCivil_EtatsCivil1"
	  add_foreign_key "Clients_Has_Conjoints", "Clients", column: "Clients_Conjoint_id", name: "fk_Clients_has_Clients_Conjoints"
	  add_foreign_key "Clients_Has_Conjoints", "Clients", column: "Clients_id", name: "fk_Clients_has_Clients_Clients1"
	  add_foreign_key "Clients_Has_Enfants", "Clients", column: "Clients_id", name: "fk_Enfants_has_Clients_Clients1"
	  add_foreign_key "Clients_Has_Enfants", "Enfants", column: "Enfants_id", name: "fk_Enfants_has_Clients_Enfants1"
	  add_foreign_key "Clients_has_Employeurs", "Clients", column: "Clients_id", name: "fk_Clients_has_Employeurs_Clients1"
	  add_foreign_key "Clients_has_Employeurs", "Employeurs", column: "Employeurs_id", name: "fk_Clients_has_Employeurs_Employeurs1"
	  add_foreign_key "Employeurs", "Adresses", column: "Adresses_id", name: "fk_Institutions_Adresses10"
	  add_foreign_key "Etudes", "Clients", column: "Clients_id", name: "fk_Etudes_Clients1"
	  add_foreign_key "Etudes", "Institutions", column: "Institutions_id", name: "fk_Etudes_Institutions1"
	  add_foreign_key "Institutions", "Adresses", column: "Adresses_id", name: "fk_Institutions_Adresses1"
	end
end

  def self.down
  end
end
