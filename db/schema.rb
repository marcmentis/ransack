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

ActiveRecord::Schema.define(version: 20141118183156) do

  create_table "facilities", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "for_selects", force: true do |t|
    t.string   "code"
    t.string   "value"
    t.string   "text"
    t.string   "grouper"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "option_order"
    t.integer  "facility_id"
  end

  create_table "pats", force: true do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "number"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "facility_id"
    t.date     "doa"
    t.date     "dob"
    t.date     "dod"
    t.string   "ward"
  end

  add_index "pats", ["facility_id"], name: "index_pats_on_facility_id"

  create_table "users", force: true do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "authen"
    t.string   "facility"
    t.string   "role"
    t.string   "email"
    t.string   "firstinitial"
    t.string   "middleinitial"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["facility"], name: "index_users_on_facility"

  create_table "weekly_notes", force: true do |t|
    t.string   "danger_yn"
    t.string   "drugs_last_changed"
    t.text     "drugs_not_why"
    t.text     "drugs_change_why"
    t.date     "meeting_date"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "pat_id"
    t.string   "pre_date_yesno"
    t.text     "pre_date_no_why"
    t.date     "date_pre"
  end

  add_index "weekly_notes", ["pat_id"], name: "index_weekly_notes_on_pat_id"

end
