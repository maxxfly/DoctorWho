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

ActiveRecord::Schema.define(version: 20150522203626) do

  create_table "doctors", force: :cascade do |t|
    t.string  "first_name",    limit: 255
    t.string  "last_name",     limit: 255
    t.string  "address_1",     limit: 255
    t.string  "address_2",     limit: 255
    t.string  "zip_code",      limit: 255
    t.string  "city",          limit: 255
    t.string  "country",       limit: 255
    t.float   "latitude",      limit: 24
    t.float   "longitude",     limit: 24
    t.integer "profession_id", limit: 4
  end

  add_index "doctors", ["profession_id"], name: "index_doctors_on_profession_id", using: :btree

  create_table "professions", force: :cascade do |t|
    t.string "name", limit: 255
  end

end
