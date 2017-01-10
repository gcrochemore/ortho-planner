# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20170110122437) do

  create_table "absences", force: :cascade do |t|
    t.integer  "patient_id"
    t.datetime "begin_date"
    t.datetime "end_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "absences", ["patient_id"], name: "index_absences_on_patient_id"

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
    t.integer  "addressable_id"
    t.string   "addressable_type"
    t.integer  "address_type_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "addresses", ["address_type_id"], name: "index_addresses_on_address_type_id"
  add_index "addresses", ["addressable_type", "addressable_id"], name: "index_addresses_on_addressable_type_and_addressable_id"

  create_table "contact_information_types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contact_informations", force: :cascade do |t|
    t.integer  "contactable_id"
    t.string   "contactable_type"
    t.integer  "contact_information_type_id"
    t.string   "value"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  add_index "contact_informations", ["contactable_type", "contactable_id"], name: "index_contact_information_on_contactable"

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
  end

  add_index "health_places", ["health_place_type_id"], name: "index_health_places_on_health_place_type_id"

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
    t.integer  "interaction_object_id"
    t.integer  "interaction_type_id"
    t.datetime "interaction_date"
    t.text     "comments"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  add_index "interactions", ["interaction_object_id"], name: "index_interactions_on_interaction_object_id"
  add_index "interactions", ["interaction_type_id"], name: "index_interactions_on_interaction_type_id"
  add_index "interactions", ["patient_id"], name: "index_interactions_on_patient_id"

  create_table "pathologies", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "patients", force: :cascade do |t|
    t.string   "last_name"
    t.string   "first_name"
    t.boolean  "is_male"
    t.date     "birth_date"
    t.string   "birth_place"
    t.string   "phone_number"
    t.boolean  "priority"
    t.text     "comments"
    t.string   "job"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "patients_acts", force: :cascade do |t|
    t.integer  "patient_id"
    t.integer  "act_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "patients_acts", ["act_id"], name: "index_patients_acts_on_act_id"
  add_index "patients_acts", ["patient_id"], name: "index_patients_acts_on_patient_id"

  create_table "patients_pathologies", force: :cascade do |t|
    t.integer  "patient_id"
    t.integer  "pathology_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "patients_pathologies", ["pathology_id"], name: "index_patients_pathologies_on_pathology_id"
  add_index "patients_pathologies", ["patient_id"], name: "index_patients_pathologies_on_patient_id"

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
  end

  add_index "practitioners", ["health_place_id"], name: "index_practitioners_on_health_place_id"
  add_index "practitioners", ["practitioner_profession_id"], name: "index_practitioners_on_practitioner_profession_id"

  create_table "roles", force: :cascade do |t|
    t.string   "name"
    t.integer  "resource_id"
    t.string   "resource_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "roles", ["name", "resource_type", "resource_id"], name: "index_roles_on_name_and_resource_type_and_resource_id"
  add_index "roles", ["name"], name: "index_roles_on_name"

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
  end

  add_index "schoolings", ["patient_id"], name: "index_schoolings_on_patient_id"
  add_index "schoolings", ["school_id"], name: "index_schoolings_on_school_id"
  add_index "schoolings", ["school_level_id"], name: "index_schoolings_on_school_level_id"
  add_index "schoolings", ["school_year_id"], name: "index_schoolings_on_school_year_id"

  create_table "schools", force: :cascade do |t|
    t.string   "name"
    t.integer  "school_type_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "schools", ["school_type_id"], name: "index_schools_on_school_type_id"

  create_table "sessions", force: :cascade do |t|
    t.datetime "begin_date"
    t.datetime "end_date"
    t.integer  "therapy_id"
    t.integer  "act_id"
    t.integer  "practitioner_id"
    t.integer  "health_place_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "sessions", ["act_id"], name: "index_sessions_on_act_id"
  add_index "sessions", ["health_place_id"], name: "index_sessions_on_health_place_id"
  add_index "sessions", ["practitioner_id"], name: "index_sessions_on_practitioner_id"
  add_index "sessions", ["therapy_id"], name: "index_sessions_on_therapy_id"

  create_table "therapies", force: :cascade do |t|
    t.integer  "practitioner_id"
    t.datetime "begin_date"
    t.datetime "end_date"
    t.integer  "patient_id"
    t.integer  "health_place_id"
    t.integer  "number_of_sessions"
    t.integer  "session_duration"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "therapies", ["health_place_id"], name: "index_therapies_on_health_place_id"
  add_index "therapies", ["patient_id"], name: "index_therapies_on_patient_id"
  add_index "therapies", ["practitioner_id"], name: "index_therapies_on_practitioner_id"

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
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "users_roles", id: false, force: :cascade do |t|
    t.integer "user_id"
    t.integer "role_id"
  end

  add_index "users_roles", ["user_id", "role_id"], name: "index_users_roles_on_user_id_and_role_id"

  create_table "versions", force: :cascade do |t|
    t.string   "item_type",                     null: false
    t.integer  "item_id",                       null: false
    t.string   "event",                         null: false
    t.string   "whodunnit"
    t.text     "object",     limit: 1073741823
    t.datetime "created_at"
  end

  add_index "versions", ["item_type", "item_id"], name: "index_versions_on_item_type_and_item_id"

  create_table "waiting_lists", force: :cascade do |t|
    t.integer  "patient_id"
    t.integer  "office_id"
    t.datetime "start_date"
    t.datetime "end_date"
    t.integer  "pathology_id"
    t.string   "comments"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "waiting_lists", ["office_id"], name: "index_waiting_lists_on_office_id"
  add_index "waiting_lists", ["pathology_id"], name: "index_waiting_lists_on_pathology_id"
  add_index "waiting_lists", ["patient_id"], name: "index_waiting_lists_on_patient_id"

end
