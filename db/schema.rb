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

ActiveRecord::Schema.define(version: 20180731210600) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "absences", force: :cascade do |t|
    t.integer  "patient_id"
    t.datetime "begin_date"
    t.datetime "end_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["patient_id"], name: "index_absences_on_patient_id", using: :btree
  end

  create_table "acts", force: :cascade do |t|
    t.string   "name"
    t.float    "AMO"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "address_types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "addresses", force: :cascade do |t|
    t.string   "name"
    t.integer  "street_number"
    t.string   "street_name"
    t.string   "postal_code"
    t.string   "city"
    t.float    "latitude"
    t.float    "longitude"
    t.string   "addressable_type"
    t.integer  "addressable_id"
    t.integer  "address_type_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["address_type_id"], name: "index_addresses_on_address_type_id", using: :btree
    t.index ["addressable_type", "addressable_id"], name: "index_addresses_on_addressable_type_and_addressable_id", using: :btree
  end

  create_table "contact_information_types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contact_informations", force: :cascade do |t|
    t.string   "contactable_type"
    t.integer  "contactable_id"
    t.integer  "contact_information_type_id"
    t.string   "value"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.index ["contactable_type", "contactable_id"], name: "index_contact_information_on_contactable", using: :btree
  end

  create_table "health_place_types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "health_places", force: :cascade do |t|
    t.string   "name"
    t.integer  "health_place_type_id"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.index ["health_place_type_id"], name: "index_health_places_on_health_place_type_id", using: :btree
  end

  create_table "interaction_objects", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "interaction_types", force: :cascade do |t|
    t.string   "name"
    t.string   "glyphicon"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "interactions", force: :cascade do |t|
    t.integer  "patient_id"
    t.integer  "practitioner_id"
    t.integer  "interaction_object_id"
    t.integer  "interaction_type_id"
    t.datetime "interaction_date"
    t.text     "comments"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.index ["interaction_object_id"], name: "index_interactions_on_interaction_object_id", using: :btree
    t.index ["interaction_type_id"], name: "index_interactions_on_interaction_type_id", using: :btree
    t.index ["patient_id"], name: "index_interactions_on_patient_id", using: :btree
    t.index ["practitioner_id"], name: "index_interactions_on_practitioner_id", using: :btree
  end

  create_table "pathologies", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "patient_availabilities", force: :cascade do |t|
    t.integer  "patient_id"
    t.integer  "day"
    t.integer  "period"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean  "available"
    t.index ["patient_id"], name: "index_patient_availabilities_on_patient_id", using: :btree
  end

  create_table "patients", force: :cascade do |t|
    t.string   "last_name"
    t.string   "first_name"
    t.boolean  "is_male"
    t.date     "birth_date"
    t.string   "birth_place"
    t.boolean  "priority"
    t.text     "comments"
    t.string   "job"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "patients_acts", force: :cascade do |t|
    t.integer  "patient_id"
    t.integer  "act_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["act_id"], name: "index_patients_acts_on_act_id", using: :btree
    t.index ["patient_id"], name: "index_patients_acts_on_patient_id", using: :btree
  end

  create_table "patients_pathologies", force: :cascade do |t|
    t.integer  "patient_id"
    t.integer  "pathology_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["pathology_id"], name: "index_patients_pathologies_on_pathology_id", using: :btree
    t.index ["patient_id"], name: "index_patients_pathologies_on_patient_id", using: :btree
  end

  create_table "practitioner_professions", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "practitioners", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.date     "birth_date"
    t.string   "birth_place"
    t.integer  "practitioner_profession_id"
    t.integer  "health_place_id"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.index ["health_place_id"], name: "index_practitioners_on_health_place_id", using: :btree
    t.index ["practitioner_profession_id"], name: "index_practitioners_on_practitioner_profession_id", using: :btree
  end

  create_table "roles", force: :cascade do |t|
    t.string   "name"
    t.string   "resource_type"
    t.integer  "resource_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["name", "resource_type", "resource_id"], name: "index_roles_on_name_and_resource_type_and_resource_id", using: :btree
    t.index ["name"], name: "index_roles_on_name", using: :btree
  end

  create_table "school_levels", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "school_types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "school_years", force: :cascade do |t|
    t.date     "begin_date"
    t.date     "end_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "schoolings", force: :cascade do |t|
    t.integer  "patient_id"
    t.integer  "school_id"
    t.integer  "school_level_id"
    t.integer  "school_year_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["patient_id"], name: "index_schoolings_on_patient_id", using: :btree
    t.index ["school_id"], name: "index_schoolings_on_school_id", using: :btree
    t.index ["school_level_id"], name: "index_schoolings_on_school_level_id", using: :btree
    t.index ["school_year_id"], name: "index_schoolings_on_school_year_id", using: :btree
  end

  create_table "schools", force: :cascade do |t|
    t.string   "name"
    t.integer  "school_type_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["school_type_id"], name: "index_schools_on_school_type_id", using: :btree
  end

  create_table "sessions", force: :cascade do |t|
    t.datetime "begin_date"
    t.datetime "end_date"
    t.integer  "therapy_id"
    t.integer  "patient_id"
    t.integer  "act_id"
    t.integer  "practitioner_id"
    t.integer  "health_place_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["act_id"], name: "index_sessions_on_act_id", using: :btree
    t.index ["health_place_id"], name: "index_sessions_on_health_place_id", using: :btree
    t.index ["patient_id"], name: "index_sessions_on_patient_id", using: :btree
    t.index ["practitioner_id"], name: "index_sessions_on_practitioner_id", using: :btree
    t.index ["therapy_id"], name: "index_sessions_on_therapy_id", using: :btree
  end

  create_table "therapies", force: :cascade do |t|
    t.integer  "practitioner_id"
    t.datetime "begin_date"
    t.datetime "end_date"
    t.integer  "patient_id"
    t.integer  "health_place_id"
    t.integer  "number_of_sessions"
    t.integer  "session_duration"
    t.integer  "act_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.index ["act_id"], name: "index_therapies_on_act_id", using: :btree
    t.index ["health_place_id"], name: "index_therapies_on_health_place_id", using: :btree
    t.index ["patient_id"], name: "index_therapies_on_patient_id", using: :btree
    t.index ["practitioner_id"], name: "index_therapies_on_practitioner_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.integer  "practitioner_id"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["practitioner_id"], name: "index_users_on_practitioner_id", using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  create_table "users_roles", id: false, force: :cascade do |t|
    t.integer "user_id"
    t.integer "role_id"
    t.index ["user_id", "role_id"], name: "index_users_roles_on_user_id_and_role_id", using: :btree
  end

  create_table "versions", force: :cascade do |t|
    t.string   "item_type",  null: false
    t.integer  "item_id",    null: false
    t.string   "event",      null: false
    t.string   "whodunnit"
    t.text     "object"
    t.datetime "created_at"
    t.index ["item_type", "item_id"], name: "index_versions_on_item_type_and_item_id", using: :btree
  end

  create_table "waiting_lists", force: :cascade do |t|
    t.integer  "patient_id"
    t.integer  "health_place_id"
    t.datetime "start_date"
    t.datetime "end_date"
    t.integer  "pathology_id"
    t.text     "comments"
    t.boolean  "waiting_for_patient_return"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.index ["health_place_id"], name: "index_waiting_lists_on_health_place_id", using: :btree
    t.index ["pathology_id"], name: "index_waiting_lists_on_pathology_id", using: :btree
    t.index ["patient_id"], name: "index_waiting_lists_on_patient_id", using: :btree
  end

  add_foreign_key "absences", "patients"
  add_foreign_key "addresses", "address_types"
  add_foreign_key "contact_informations", "contact_information_types"
  add_foreign_key "health_places", "health_place_types"
  add_foreign_key "interactions", "interaction_objects"
  add_foreign_key "interactions", "interaction_types"
  add_foreign_key "interactions", "patients"
  add_foreign_key "interactions", "practitioners"
  add_foreign_key "patient_availabilities", "patients"
  add_foreign_key "patients_acts", "acts"
  add_foreign_key "patients_acts", "patients"
  add_foreign_key "patients_pathologies", "pathologies"
  add_foreign_key "patients_pathologies", "patients"
  add_foreign_key "practitioners", "health_places"
  add_foreign_key "practitioners", "practitioner_professions"
  add_foreign_key "schoolings", "patients"
  add_foreign_key "schoolings", "school_levels"
  add_foreign_key "schoolings", "school_years"
  add_foreign_key "schoolings", "schools"
  add_foreign_key "schools", "school_types"
  add_foreign_key "sessions", "acts"
  add_foreign_key "sessions", "health_places"
  add_foreign_key "sessions", "patients"
  add_foreign_key "sessions", "practitioners"
  add_foreign_key "sessions", "therapies"
  add_foreign_key "therapies", "acts"
  add_foreign_key "therapies", "health_places"
  add_foreign_key "therapies", "patients"
  add_foreign_key "therapies", "practitioners"
  add_foreign_key "users", "practitioners"
  add_foreign_key "waiting_lists", "health_places"
  add_foreign_key "waiting_lists", "pathologies"
  add_foreign_key "waiting_lists", "patients"
end
