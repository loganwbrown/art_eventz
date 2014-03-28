ActiveRecord::Schema.define(version: 20140328193149) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "art_photos", force: true do |t|
    t.string   "art_photo"
    t.integer  "profile_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "event_photos", force: true do |t|
    t.integer  "event_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "photo"
  end

  create_table "events", force: true do |t|
    t.string   "title"
    t.string   "tagline"
    t.string   "address"
    t.string   "address2"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.text     "more_info"
    t.string   "website"
    t.string   "facebook"
    t.string   "application_form"
    t.string   "contact_name"
    t.string   "contact_email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "date"
    t.string   "time"
    t.integer  "member_id"
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
    t.integer  "member_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "art_photo1"
    t.string   "art_photo2"
    t.string   "art_photo3"
  end

end
