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

ActiveRecord::Schema.define(version: 20180208085836) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "sioris", force: :cascade do |t|
    t.text "content"
    t.date "departure_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["departure_date"], name: "index_sioris_on_departure_date"
  end

  create_table "tourist_details", force: :cascade do |t|
    t.integer "tourist_spot_id", null: false
    t.string "title", null: false
    t.text "content"
    t.integer "longitude"
    t.integer "latitude"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tourist_spot_id"], name: "index_tourist_details_on_tourist_spot_id"
  end

  create_table "tourist_spots", force: :cascade do |t|
    t.integer "travel_day_id", null: false
    t.integer "order", null: false
    t.time "arrival_time"
    t.integer "duration"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "travel_days", force: :cascade do |t|
    t.integer "siori_id", null: false
    t.integer "day", default: 1, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["siori_id"], name: "index_travel_days_on_siori_id"
  end

  create_table "travel_groups", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "siori_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "owner", default: false, null: false
    t.index ["siori_id"], name: "index_travel_groups_on_siori_id"
    t.index ["user_id"], name: "index_travel_groups_on_user_id"
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
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "travel_groups", "sioris"
  add_foreign_key "travel_groups", "users"
end
