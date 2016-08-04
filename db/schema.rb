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

ActiveRecord::Schema.define(version: 20160804083519) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "customers", force: :cascade do |t|
    t.text     "pk_template_name"
    t.integer  "order_id"
    t.decimal  "total_price"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "dining_tables", force: :cascade do |t|
    t.integer  "customer_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.text     "name"
  end

  create_table "food_orders", force: :cascade do |t|
    t.jsonb    "food_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "foods", force: :cascade do |t|
    t.text     "category"
    t.decimal  "price"
    t.text     "name"
    t.text     "customize"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "images", force: :cascade do |t|
    t.string   "file_id"
    t.integer  "food_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "images", ["food_id"], name: "index_images_on_food_id", using: :btree

  add_foreign_key "images", "foods"
end
