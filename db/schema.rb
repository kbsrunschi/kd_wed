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

ActiveRecord::Schema.define(version: 20150703042052) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "gifts", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.string   "pic_name"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "user_id"
    t.string   "category"
  end

  add_index "gifts", ["user_id"], name: "index_gifts_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "username",                                     null: false
    t.string   "crypted_password"
    t.string   "salt"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "remember_me_token"
    t.datetime "remember_me_token_expires_at"
    t.datetime "last_login_at"
    t.datetime "last_logout_at"
    t.datetime "last_activity_at"
    t.string   "last_login_from_ip_address"
    t.boolean  "bachelor_party",               default: false, null: false
    t.boolean  "bachelorette_party",           default: false, null: false
    t.boolean  "chicago_shower",               default: false, null: false
    t.boolean  "tipton_shower",                default: false, null: false
    t.boolean  "rehearsal_dinner",             default: false, null: false
    t.boolean  "rehearsal",                    default: false, null: false
    t.string   "name"
    t.text     "songs"
    t.integer  "number_attending"
    t.text     "attendees"
    t.boolean  "attending"
    t.boolean  "admin",                        default: false, null: false
    t.boolean  "rsvp",                         default: false, null: false
  end

  add_index "users", ["last_logout_at", "last_activity_at"], name: "index_users_on_last_logout_at_and_last_activity_at", using: :btree
  add_index "users", ["remember_me_token"], name: "index_users_on_remember_me_token", using: :btree
  add_index "users", ["username"], name: "index_users_on_username", unique: true, using: :btree

end
