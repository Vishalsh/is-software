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

ActiveRecord::Schema.define(version: 20131126184120) do

  create_table "allocations", force: true do |t|
    t.integer  "software_id"
    t.integer  "user_id"
    t.datetime "valid_upto"
    t.string   "hash_code"
    t.integer  "allocator_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "download_count"
  end

  create_table "downloads", force: true do |t|
    t.integer  "allocation_id"
    t.integer  "user_id"
    t.integer  "software_id"
    t.string   "ip"
    t.string   "user_agent"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "operating_systems", force: true do |t|
    t.string   "name"
    t.decimal  "version"
    t.integer  "state_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "softwares", force: true do |t|
    t.string   "name"
    t.string   "path"
    t.integer  "operating_system_id"
    t.text     "description"
    t.integer  "download_count"
    t.integer  "state_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "freeware"
    t.integer  "user_id"
  end

  create_table "states", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "emp_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "role"
  end

end
