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

ActiveRecord::Schema.define(version: 20150302020554) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

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

  create_table "tests", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
