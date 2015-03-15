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

ActiveRecord::Schema.define(version: 20150315190751) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "answers", force: :cascade do |t|
    t.text     "answer_text"
    t.integer  "question_id"
    t.integer  "project_type_information_id"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string   "category_name"
    t.integer  "project_type_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "category_option_selections", force: :cascade do |t|
    t.string   "category_option_selection_name"
    t.integer  "category_option_id"
    t.integer  "project_type_information_id"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  create_table "category_options", force: :cascade do |t|
    t.string   "category_option_name"
    t.integer  "category_id"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "clients", force: :cascade do |t|
    t.string   "client_name"
    t.string   "billing_address"
    t.string   "billing_city"
    t.string   "billing_zip"
    t.integer  "state_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "contact_types", force: :cascade do |t|
    t.string   "contact_type_name"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "contacts", force: :cascade do |t|
    t.string   "contact_first_name"
    t.string   "contact_last_name"
    t.string   "contact_email"
    t.string   "contact_cell"
    t.string   "contact_work"
    t.integer  "client_id"
    t.integer  "contact_type_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "contact_address"
    t.string   "contact_city"
    t.string   "contact_zip"
    t.integer  "state_id"
  end

  create_table "deal_types", force: :cascade do |t|
    t.string   "deal_type_name"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "installers", force: :cascade do |t|
    t.string   "installer_first_name"
    t.string   "installer_last_name"
    t.string   "installer_email"
    t.string   "installer_phone"
    t.integer  "user_id"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "irrigation_responsibilities", force: :cascade do |t|
    t.string   "irrigation_responsibility_name"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  create_table "procurement_tools", force: :cascade do |t|
    t.string   "procurement_tool_name"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "project_contacts", force: :cascade do |t|
    t.integer  "project_id"
    t.integer  "contact_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "project_requested_sales_documents", force: :cascade do |t|
    t.integer  "project_id"
    t.integer  "requested_sales_document_id"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "project_settings", force: :cascade do |t|
    t.string   "project_setting_name"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "project_site_informations", force: :cascade do |t|
    t.decimal  "area_length"
    t.decimal  "area_width"
    t.text     "area_description"
    t.boolean  "geotech_report_in_position"
    t.boolean  "bobcat_accessible"
    t.boolean  "construction_fence_required"
    t.boolean  "client_fence_dismantle_reinstall_required"
    t.boolean  "rock_excavation_required"
    t.boolean  "hand_dig_required"
    t.boolean  "dirt_haul_off_required"
    t.boolean  "tree_vegetation_removal_required"
    t.boolean  "area_is_sloped"
    t.boolean  "site_survey_required"
    t.boolean  "surface_protection_required"
    t.boolean  "under_ground_obstacles_yn"
    t.boolean  "structural_removal_required"
    t.boolean  "pvt_locator_required"
    t.integer  "project_type_information_id"
    t.datetime "created_at",                                null: false
    t.datetime "updated_at",                                null: false
    t.string   "soil_condition"
  end

  create_table "project_sites", force: :cascade do |t|
    t.string   "site_name"
    t.string   "site_address"
    t.string   "site_city"
    t.string   "site_zip"
    t.string   "site_access"
    t.integer  "state_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "project_soil_conditions", force: :cascade do |t|
    t.integer  "soil_condition_id"
    t.integer  "project_site_information_id"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "project_statuses", force: :cascade do |t|
    t.string   "project_status_name"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "project_type_informations", force: :cascade do |t|
    t.string   "proposal_number"
    t.string   "revision_number"
    t.integer  "project_id"
    t.integer  "project_type_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "project_types", force: :cascade do |t|
    t.string   "project_type_name"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "project_utilities", force: :cascade do |t|
    t.integer  "utility_id"
    t.integer  "project_site_information_id"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "projects", force: :cascade do |t|
    t.string   "project_name"
    t.date     "start_date"
    t.date     "deadline"
    t.text     "client_goal"
    t.text     "time_frame_description"
    t.integer  "mobilization_quantity"
    t.boolean  "liquidate_damages_yn"
    t.boolean  "prevailing_wages_certified_payroll_yn"
    t.boolean  "permit_special_inspection_in_possession"
    t.text     "restricted_work_hours"
    t.boolean  "permit_submittal_required"
    t.boolean  "permit_fees_required"
    t.text     "permit_fees"
    t.decimal  "project_budget"
    t.integer  "deal_type_id"
    t.text     "deal_type_description"
    t.integer  "project_setting_id"
    t.integer  "procurement_tool_id"
    t.integer  "sales_person_id"
    t.integer  "project_status_id"
    t.integer  "irrigation_responsibility_id"
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
  end

  create_table "questions", force: :cascade do |t|
    t.string   "question_name"
    t.integer  "project_type_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "requested_sales_documents", force: :cascade do |t|
    t.string   "requested_sales_document_name"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  create_table "sales_people", force: :cascade do |t|
    t.string   "sales_person_first_name"
    t.string   "sales_person_last_name"
    t.string   "sales_person_email"
    t.string   "sales_person_phone"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.integer  "user_id"
  end

  create_table "states", force: :cascade do |t|
    t.string   "state_name"
    t.string   "state_abbreviation"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
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
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "role"
    t.string   "name"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "utilities", force: :cascade do |t|
    t.string   "utility_name"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

end
