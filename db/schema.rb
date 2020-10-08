# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_10_02_202850) do

  create_table "gardens", force: :cascade do |t|
    t.string "propertyid"
    t.string "boro"
    t.string "communityboard"
    t.string "address"
    t.string "size"
    t.string "jurisdiction"
    t.string "neighborhoodhome"
    t.string "cross_streets"
    t.string "latitude"
    t.string "longitude"
    t.string "postcode"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "username"
    t.string "password"
    t.string "email"
    t.integer "phone"
    t.string "address"
    t.string "apartment"
    t.string "city"
    t.string "state"
    t.integer "zipcode"
    t.boolean "volunteer"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "visits", force: :cascade do |t|
    t.integer "user_id"
    t.integer "garden_id"
    t.string "purpose"
    t.string "date"
    t.string "intime"
    t.string "outtime"
    t.string "scheduledin"
    t.string "scheduledout"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
