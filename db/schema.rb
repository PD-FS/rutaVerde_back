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

ActiveRecord::Schema.define(version: 20181105230300) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "activities", force: :cascade do |t|
    t.string "name"
    t.date "initial_time"
    t.date "final_time"
    t.string "description"
    t.string "requirements"
    t.integer "user_id"
    t.integer "civicoin_give"
    t.boolean "cost"
    t.decimal "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "activity_registers", force: :cascade do |t|
    t.bigint "activity_id"
    t.integer "user_id"
    t.string "picture1"
    t.string "picture2"
    t.string "picture3"
    t.string "comments"
    t.integer "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["activity_id"], name: "index_activity_registers_on_activity_id"
  end

  create_table "activity_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.string "icon"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contacts", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "telephone"
    t.string "position"
    t.string "operator"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "nationalities", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "place_users", force: :cascade do |t|
    t.integer "user_id"
    t.bigint "place_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["place_id"], name: "index_place_users_on_place_id"
  end

  create_table "places", force: :cascade do |t|
    t.string "name"
    t.string "schedule"
    t.string "description"
    t.string "zone"
    t.decimal "latitude"
    t.bigint "contact_id"
    t.bigint "category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_places_on_category_id"
    t.index ["contact_id"], name: "index_places_on_contact_id"
  end

  create_table "zones", force: :cascade do |t|
    t.string "name"
    t.decimal "latitude"
    t.decimal "longitude"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "activity_registers", "activities"
  add_foreign_key "place_users", "places"
  add_foreign_key "places", "categories"
  add_foreign_key "places", "contacts"
end
