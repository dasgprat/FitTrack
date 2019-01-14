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

ActiveRecord::Schema.define(version: 2018_11_09_213032) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "heart_rates", force: :cascade do |t|
    t.integer "index", null: false
    t.string "emailid", default: "", null: false
    t.jsonb "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["index"], name: "index_heart_rates_on_index", unique: true
  end

  create_table "tb_heart_rates", force: :cascade do |t|
    t.integer "index", null: false
    t.string "emailid", default: "", null: false
    t.datetime "date"
    t.integer "dailyHeartRate"
    t.integer "hourlyHeartRate"
    t.datetime "timestamp", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["index"], name: "index_tb_heart_rates_on_index", unique: true
  end

  create_table "tb_user_data", force: :cascade do |t|
    t.integer "index", null: false
    t.string "emailid", default: "", null: false
    t.string "fullName"
    t.integer "age"
    t.string "avatar"
    t.string "avatar150"
    t.string "avatar640"
    t.string "country"
    t.string "gender"
    t.float "height"
    t.float "weight"
    t.string "weightUnit"
    t.integer "steps"
    t.integer "lightlyActiveMinutes"
    t.integer "fairlyActiveMinutes"
    t.integer "veryActiveMinutes"
    t.integer "activityCalories"
    t.datetime "sleepStartTime"
    t.datetime "sleepEndTime"
    t.integer "minutesAsleep"
    t.integer "minutesAwake"
    t.datetime "timestamp", null: false
    t.boolean "flag_manual"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["index"], name: "index_tb_user_data_on_index", unique: true
  end

  create_table "user_data", force: :cascade do |t|
    t.integer "index", null: false
    t.string "emailid", default: "", null: false
    t.jsonb "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["index"], name: "index_user_data_on_index", unique: true
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "fitbitconfigured"
    t.string "fitbitkey"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
