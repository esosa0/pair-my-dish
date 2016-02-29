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

ActiveRecord::Schema.define(version: 20160229120506) do

  create_table "aromas", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "kind"
  end

  create_table "aromas_sides", id: false, force: :cascade do |t|
    t.integer "aroma_id"
    t.integer "side_id"
  end

  add_index "aromas_sides", ["aroma_id"], name: "index_aromas_sides_on_aroma_id"
  add_index "aromas_sides", ["side_id"], name: "index_aromas_sides_on_side_id"

  create_table "aromas_wines", id: false, force: :cascade do |t|
    t.integer "aroma_id"
    t.integer "wine_id"
  end

  add_index "aromas_wines", ["aroma_id"], name: "index_aromas_wines_on_aroma_id"
  add_index "aromas_wines", ["wine_id"], name: "index_aromas_wines_on_wine_id"

  create_table "cooking_methods", force: :cascade do |t|
    t.string   "name"
    t.boolean  "dry"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dishes", force: :cascade do |t|
    t.integer  "ingredient_id"
    t.integer  "cooking_method_id"
    t.boolean  "sweet"
    t.boolean  "spicy"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.integer  "user_id"
    t.integer  "sauce_id"
  end

  add_index "dishes", ["cooking_method_id"], name: "index_dishes_on_cooking_method_id"
  add_index "dishes", ["ingredient_id"], name: "index_dishes_on_ingredient_id"
  add_index "dishes", ["sauce_id"], name: "index_dishes_on_sauce_id"
  add_index "dishes", ["user_id"], name: "index_dishes_on_user_id"

  create_table "dishes_sides", id: false, force: :cascade do |t|
    t.integer "dish_id"
    t.integer "side_id"
  end

  add_index "dishes_sides", ["dish_id"], name: "index_dishes_sides_on_dish_id"
  add_index "dishes_sides", ["side_id"], name: "index_dishes_sides_on_side_id"

  create_table "ingredients", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "body_min"
    t.integer  "body_max"
  end

  create_table "sauces", force: :cascade do |t|
    t.string   "name"
    t.integer  "alcohol_min"
    t.integer  "alcohol_max"
    t.integer  "tannin_min"
    t.integer  "tannin_max"
    t.integer  "acid_min"
    t.integer  "acid_max"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "sides", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "kind"
  end

  create_table "users", force: :cascade do |t|
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
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.boolean  "admin"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "wines", force: :cascade do |t|
    t.string   "name"
    t.integer  "body"
    t.integer  "alcohol"
    t.integer  "tannin"
    t.integer  "acid"
    t.integer  "sweetness"
    t.boolean  "sparkling"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
