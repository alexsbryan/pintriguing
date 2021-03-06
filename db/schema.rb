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

ActiveRecord::Schema.define(version: 20140320164836) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "board_assignments", force: true do |t|
    t.integer  "board_id",    null: false
    t.integer  "pin_id",      null: false
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "board_assignments", ["board_id"], name: "index_board_assignments_on_board_id", using: :btree
  add_index "board_assignments", ["pin_id"], name: "index_board_assignments_on_pin_id", using: :btree

  create_table "boards", force: true do |t|
    t.string   "name",        null: false
    t.text     "description"
    t.integer  "owner_id",    null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "boards", ["owner_id"], name: "index_boards_on_owner_id", using: :btree

  create_table "categories", force: true do |t|
    t.string   "title",      null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "categories", ["title"], name: "index_categories_on_title", using: :btree

  create_table "category_assignments", force: true do |t|
    t.integer  "board_id",   null: false
    t.integer  "cat_id",     null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "category_assignments", ["board_id"], name: "index_category_assignments_on_board_id", using: :btree
  add_index "category_assignments", ["cat_id"], name: "index_category_assignments_on_cat_id", using: :btree

  create_table "pins", force: true do |t|
    t.string   "title",      null: false
    t.string   "url",        null: false
    t.string   "img_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "first_name"
    t.string   "last_name"
  end

  add_index "users", ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
