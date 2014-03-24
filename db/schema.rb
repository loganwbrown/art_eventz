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

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 20140324174226) do
=======
ActiveRecord::Schema.define(version: 20140324180926) do
>>>>>>> 5a9ecf40a21ba66c5e1b4f32b46e84d70ae64db1

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "events", force: true do |t|
    t.string   "title"
    t.string   "tagline"
    t.string   "address"
    t.string   "address2"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.text     "more_info"
    t.string   "photo1"
    t.string   "photo2"
    t.string   "photo3"
    t.string   "website"
    t.string   "facebook"
    t.string   "application_form"
    t.string   "contact_name"
    t.string   "contact_email"
    t.datetime "created_at"
    t.datetime "updated_at"
<<<<<<< HEAD
    t.datetime "start"
    t.datetime "end"
    t.string   "date"
    t.string   "time"
=======
    t.integer  "member_id"
>>>>>>> 5a9ecf40a21ba66c5e1b4f32b46e84d70ae64db1
  end

  create_table "members", force: true do |t|
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
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "members", ["email"], name: "index_members_on_email", unique: true, using: :btree
  add_index "members", ["reset_password_token"], name: "index_members_on_reset_password_token", unique: true, using: :btree

  create_table "profiles", force: true do |t|
    t.string   "name"
    t.string   "avatar"
    t.string   "tagline"
    t.string   "website1"
    t.string   "website2"
    t.string   "website3"
    t.string   "facebook"
    t.string   "twitter"
    t.text     "bio"
    t.string   "pic1"
    t.string   "pic2"
    t.string   "pic3"
    t.string   "pic4"
    t.string   "pic5"
    t.string   "pic6"
    t.integer  "member_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
