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

ActiveRecord::Schema.define(version: 20170515090522) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "allotments", force: :cascade do |t|
    t.date     "start_day"
    t.string   "request_status", default: "pending"
    t.text     "message"
    t.integer  "garden_id"
    t.integer  "user_id"
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
    t.date     "end_day"
  end

  add_index "allotments", ["garden_id"], name: "index_allotments_on_garden_id", using: :btree
  add_index "allotments", ["user_id"], name: "index_allotments_on_user_id", using: :btree

  create_table "garden_reviews", force: :cascade do |t|
    t.text     "description"
    t.integer  "stars"
    t.integer  "user_id"
    t.integer  "allotment_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "garden_reviews", ["allotment_id"], name: "index_garden_reviews_on_allotment_id", using: :btree
  add_index "garden_reviews", ["user_id"], name: "index_garden_reviews_on_user_id", using: :btree

  create_table "gardens", force: :cascade do |t|
    t.string   "description"
    t.string   "address"
    t.boolean  "available",   default: true
    t.integer  "owner_id"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.float    "latitude"
    t.float    "longitude"
    t.string   "title"
    t.string   "photo"
    t.string   "photo2"
    t.string   "photo3"
    t.string   "city"
  end

  add_index "gardens", ["owner_id"], name: "index_gardens_on_owner_id", using: :btree

  create_table "homes", force: :cascade do |t|
    t.string   "header_1"
    t.string   "header_2"
    t.string   "background_image"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "recommendations", force: :cascade do |t|
    t.text     "content"
    t.string   "photo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_reviews", force: :cascade do |t|
    t.text     "description"
    t.integer  "stars"
    t.integer  "user_id"
    t.integer  "owner_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "user_reviews", ["owner_id"], name: "index_user_reviews_on_owner_id", using: :btree
  add_index "user_reviews", ["user_id"], name: "index_user_reviews_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.string   "first_name"
    t.string   "last_name"
    t.text     "description"
    t.string   "photo"
    t.boolean  "admin",                  default: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "allotments", "gardens"
  add_foreign_key "allotments", "users"
  add_foreign_key "garden_reviews", "allotments"
  add_foreign_key "garden_reviews", "users"
  add_foreign_key "gardens", "users", column: "owner_id"
  add_foreign_key "user_reviews", "users"
  add_foreign_key "user_reviews", "users", column: "owner_id"
end
