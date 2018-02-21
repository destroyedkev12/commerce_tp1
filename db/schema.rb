# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 1) do

  create_table "Adresses", force: :cascade do |t|
    t.string "NumeroCivique", limit: 45, null: false
    t.string "Rue", limit: 45, null: false
    t.string "CodePostal", limit: 6, null: false
    t.string "Ville", null: false
    t.string "Procince", null: false
  end

  create_table "Clients", force: :cascade do |t|
    t.string "Prenom", limit: 45, null: false
    t.string "Nom", limit: 45, null: false
    t.datetime "DateNaissance", null: false
    t.string "NAS", limit: 9, null: false
    t.integer "Adresses_id", null: false
    t.integer "NombreEnfants", default: 0, null: false
    t.integer "CompteTaxesProprietaire", default: -1, null: false
    t.index ["Adresses_id"], name: "fk_Clients_Adresses_idx"
  end

  create_table "Clients_EtatsCivils", primary_key: ["Clients_id", "EtatsCivil_id"], force: :cascade do |t|
    t.integer "Clients_id", null: false
    t.integer "EtatsCivil_id", null: false
    t.datetime "DateDebut", null: false
    t.datetime "DateFin"
    t.index ["Clients_id", "EtatsCivil_id"], name: "sqlite_autoindex_Clients_EtatsCivils_1", unique: true
    t.index ["Clients_id"], name: "fk_Clients_has_EtatsCivil_Clients1_idx"
    t.index ["EtatsCivil_id"], name: "fk_Clients_has_EtatsCivil_EtatsCivil1_idx"
  end

  create_table "Clients_Has_Conjoints", primary_key: ["Clients_id", "Clients_Conjoint_id"], force: :cascade do |t|
    t.integer "Clients_id", null: false
    t.integer "Clients_Conjoint_id", null: false
    t.datetime "DateDebut", null: false
    t.datetime "DateFin"
    t.index ["Clients_Conjoint_id"], name: "fk_Clients_has_Clients_Conjoints_idx"
    t.index ["Clients_id", "Clients_Conjoint_id"], name: "fk_Clients_has_Clients_Clients1_idx"
    t.index ["Clients_id", "Clients_Conjoint_id"], name: "sqlite_autoindex_Clients_Has_Conjoints_1", unique: true
  end

  create_table "Clients_Has_Enfants", primary_key: ["Enfants_id", "Clients_id"], force: :cascade do |t|
    t.integer "Enfants_id", null: false
    t.integer "Clients_id", null: false
    t.boolean "Lien", null: false
    t.index ["Clients_id"], name: "fk_Enfants_has_Clients_Clients1_idx"
    t.index ["Enfants_id", "Clients_id"], name: "sqlite_autoindex_Clients_Has_Enfants_1", unique: true
    t.index ["Enfants_id"], name: "fk_Enfants_has_Clients_Enfants1_idx"
  end

  create_table "Clients_has_Employeurs", primary_key: ["Clients_id", "Employeurs_id"], force: :cascade do |t|
    t.integer "Clients_id", null: false
    t.integer "Employeurs_id", null: false
    t.datetime "DateDebut", null: false
    t.datetime "DateFin"
    t.index ["Clients_id", "Employeurs_id"], name: "sqlite_autoindex_Clients_has_Employeurs_1", unique: true
    t.index ["Clients_id"], name: "fk_Clients_has_Employeurs_Clients1_idx"
    t.index ["Employeurs_id"], name: "fk_Clients_has_Employeurs_Employeurs1_idx"
  end

  create_table "Employeurs", primary_key: ["id", "Adresses_id"], force: :cascade do |t|
    t.integer "id", null: false
    t.string "Nom", null: false
    t.integer "Adresses_id", null: false
    t.index ["Adresses_id"], name: "fk_Institutions_Adresses2_idx"
    t.index ["id", "Adresses_id"], name: "sqlite_autoindex_Employeurs_1", unique: true
  end

  create_table "Enfants", force: :cascade do |t|
    t.string "Nom", limit: 45, null: false
    t.string "Prenom", limit: 45, null: false
    t.datetime "DateNaissance", null: false
  end

  create_table "EtatsCivils", force: :cascade do |t|
    t.string "type", limit: 45, null: false
  end

  create_table "Etudes", force: :cascade do |t|
    t.string "SecteurEtudes", limit: 45, null: false
    t.string "Niveau", limit: 45, null: false
    t.datetime "DateDebut", null: false
    t.datetime "DateComplition"
    t.integer "Clients_id", null: false
    t.integer "Institutions_id", null: false
    t.index ["Clients_id"], name: "fk_Etudes_Clients1_idx"
    t.index ["Institutions_id"], name: "fk_Etudes_Institutions1_idx"
  end

  create_table "Institutions", primary_key: ["id", "Adresses_id"], force: :cascade do |t|
    t.integer "id", null: false
    t.string "Nom", null: false
    t.integer "Adresses_id", null: false
    t.index ["Adresses_id"], name: "fk_Institutions_Adresses1_idx"
    t.index ["id", "Adresses_id"], name: "sqlite_autoindex_Institutions_1", unique: true
  end

  create_table "Versions", force: :cascade do |t|
    t.string "item_type", null: false
    t.integer "item_id", null: false
    t.string "event", null: false
    t.string "description", null: false
    t.text "object", null: false
    t.datetime "created_at", null: false
  end

end
