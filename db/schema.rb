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

ActiveRecord::Schema.define(version: 20150824152913) do

  create_table "guests", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "gender"
    t.integer  "party_id"
    t.integer  "item_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "items", force: :cascade do |t|
    t.string   "name"
    t.string   "category"
    t.integer  "amount"
    t.string   "units"
    t.float    "serving_size"
    t.integer  "price"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "parties", force: :cascade do |t|
    t.string   "name"
    t.string   "date"
    t.integer  "duration"
    t.integer  "male_count"
    t.integer  "female_count"
    t.integer  "food_level"
    t.integer  "drink_level"
    t.integer  "budget"
    t.binary   "appetizer_course"
    t.binary   "entree_course"
    t.binary   "dessert_course"
    t.binary   "alcohol_course"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "shopping_lists", force: :cascade do |t|
    t.integer  "item_id"
    t.integer  "party_id"
    t.integer  "servings"
    t.float    "serving_price"
    t.string   "delegation_status"
    t.integer  "user_id"
    t.string   "completion_status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
