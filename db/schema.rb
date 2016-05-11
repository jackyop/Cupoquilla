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

ActiveRecord::Schema.define(version: 20160511013415) do

  create_table "compras", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "coupon_id"
    t.text     "contenido"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "compras", ["coupon_id"], name: "index_compras_on_coupon_id"
  add_index "compras", ["user_id"], name: "index_compras_on_user_id"

  create_table "coupons", force: :cascade do |t|
    t.string   "price"
    t.string   "content"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "picture"
    t.string   "name"
  end

  add_index "coupons", ["user_id"], name: "index_coupons_on_user_id"

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.string   "remember_token"
    t.integer  "client",          default: 0
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["remember_token"], name: "index_users_on_remember_token"

end
