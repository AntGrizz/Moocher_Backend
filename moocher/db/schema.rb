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

ActiveRecord::Schema.define(version: 2019_04_02_185111) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "groups", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "items", force: :cascade do |t|
    t.string "name"
    t.bigint "owner_id"
    t.string "description"
    t.string "image"
    t.string "condition"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["owner_id"], name: "index_items_on_owner_id"
  end

  create_table "rented_items", force: :cascade do |t|
    t.bigint "borrower_id"
    t.bigint "item_id"
    t.date "start_date"
    t.date "end_date"
    t.string "start_condition"
    t.string "end_condition"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["borrower_id"], name: "index_rented_items_on_borrower_id"
    t.index ["item_id"], name: "index_rented_items_on_item_id"
  end

  create_table "user_groups", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "group_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["group_id"], name: "index_user_groups_on_group_id"
    t.index ["user_id"], name: "index_user_groups_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "username"
    t.string "street"
    t.string "city"
    t.string "state"
    t.string "zip_code"
    t.integer "owner_rating"
    t.integer "borrower_rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
