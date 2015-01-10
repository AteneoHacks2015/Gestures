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

ActiveRecord::Schema.define(version: 20150110140812) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "gestures", force: :cascade do |t|
    t.string "name"
  end

  create_table "gestures_translations", force: :cascade do |t|
    t.integer "gesture_id"
    t.integer "translation_id"
  end

  add_index "gestures_translations", ["gesture_id"], name: "index_gestures_translations_on_gesture_id", using: :btree
  add_index "gestures_translations", ["translation_id"], name: "index_gestures_translations_on_translation_id", using: :btree

  create_table "items", force: :cascade do |t|
    t.text    "phrase"
    t.integer "difficulty"
    t.integer "user_id"
    t.integer "points",     default: 1
  end

  add_index "items", ["user_id"], name: "index_items_on_user_id", using: :btree

  create_table "translations", force: :cascade do |t|
    t.string  "name"
    t.integer "item_id"
  end

  add_index "translations", ["item_id"], name: "index_translations_on_item_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "login",                           null: false
    t.string   "crypted_password",                null: false
    t.string   "password_salt",                   null: false
    t.string   "persistence_token",               null: false
    t.string   "single_access_token",             null: false
    t.string   "perishable_token",                null: false
    t.datetime "current_login_at"
    t.string   "current_login_ip"
    t.string   "role"
    t.string   "name"
    t.string   "school"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.integer  "level"
    t.integer  "experience",          default: 1
  end

end
