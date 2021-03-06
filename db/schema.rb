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

ActiveRecord::Schema.define(version: 20170711002741) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "advisors", force: :cascade do |t|
    t.string "name"
    t.time "duration"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "timeslot_id"
    t.index ["timeslot_id"], name: "index_advisors_on_timeslot_id"
  end

  create_table "sessions", force: :cascade do |t|
    t.string "contact_name"
    t.string "email"
    t.string "phone_number"
    t.bigint "timeslot_id"
    t.boolean "confirmation", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["timeslot_id"], name: "index_sessions_on_timeslot_id"
  end

  create_table "timeslot_bulks", force: :cascade do |t|
    t.bigint "advisor_id"
    t.date "start_date"
    t.date "end_date"
    t.time "start_time"
    t.string "end_time"
    t.text "recurring"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["advisor_id"], name: "index_timeslot_bulks_on_advisor_id"
  end

  create_table "timeslots", force: :cascade do |t|
    t.datetime "date"
    t.datetime "start_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "advisor_id"
    t.bigint "user_id"
    t.text "recurring"
    t.time "end_time"
    t.integer "status", default: 0
    t.datetime "booked_at"
    t.index ["advisor_id"], name: "index_timeslots_on_advisor_id"
    t.index ["user_id"], name: "index_timeslots_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "advisors", "timeslots"
  add_foreign_key "sessions", "timeslots"
  add_foreign_key "timeslot_bulks", "advisors"
  add_foreign_key "timeslots", "advisors"
  add_foreign_key "timeslots", "users"
end
