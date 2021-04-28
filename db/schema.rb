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

ActiveRecord::Schema.define(version: 2021_04_26_021307) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookings", force: :cascade do |t|
    t.integer "customer_id"
    t.integer "driver_id"
    t.text "from_address"
    t.text "to_address"
    t.time "start_time"
    t.time "end_time"
    t.float "estimated_price"
    t.float "actual_price"
    t.text "status", default: "new"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "customers", force: :cascade do |t|
    t.text "first_name"
    t.text "last_name"
    t.text "street"
    t.text "suburb"
    t.text "postcode"
    t.text "state"
    t.text "email"
    t.string "password_digest"
    t.text "phone"
    t.text "credit_card_no"
    t.date "credit_card_expiry_date"
    t.text "cvv"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "admin"
  end

  create_table "drivers", force: :cascade do |t|
    t.text "first_name"
    t.text "last_name"
    t.text "street"
    t.text "suburb"
    t.text "postcode"
    t.text "state"
    t.text "email"
    t.string "password_digest"
    t.text "phone"
    t.text "bank_bsb_no"
    t.text "bank_account_no"
    t.integer "car_model_id"
    t.text "driver_license_no"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
