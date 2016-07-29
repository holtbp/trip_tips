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

ActiveRecord::Schema.define(version: 20160729024754) do

  create_table "adventures", force: :cascade do |t|
    t.integer  "sight_id"
    t.integer  "stop_id"
    t.text     "description"
    t.integer  "rating"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "adventures", ["sight_id"], name: "index_adventures_on_sight_id"
  add_index "adventures", ["stop_id"], name: "index_adventures_on_stop_id"

  create_table "cities", force: :cascade do |t|
    t.integer  "province_id"
    t.string   "name",        null: false
    t.string   "local_name"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.float    "latitude"
    t.float    "longitude"
  end

  create_table "getaways", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "name"
    t.text     "description"
    t.datetime "arrival"
    t.datetime "departure"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.boolean  "is_public",   default: false
  end

  create_table "provinces", force: :cascade do |t|
    t.string "name",                   null: false
    t.string "country_code", limit: 2
  end

  create_table "sights", force: :cascade do |t|
    t.integer  "city_id"
    t.string   "name"
    t.float    "latitude"
    t.float    "longitude"
    t.string   "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "type"
  end

  create_table "stops", force: :cascade do |t|
    t.integer  "getaway_id"
    t.integer  "city_id"
    t.datetime "arrival"
    t.datetime "departure"
  end

  create_table "users", force: :cascade do |t|
    t.string   "username",                           null: false
    t.string   "email",                              null: false
    t.string   "encrypted_password",                 null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  add_index "users", ["username"], name: "index_users_on_username", unique: true

end
