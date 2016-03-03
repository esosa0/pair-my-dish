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
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "kind",       limit: 255
  end

  create_table "aromas_sides", id: false, force: :cascade do |t|
    t.integer "aroma_id", limit: 4
    t.integer "side_id",  limit: 4
  end

  add_index "aromas_sides", ["aroma_id"], name: "index_aromas_sides_on_aroma_id", using: :btree
  add_index "aromas_sides", ["side_id"], name: "index_aromas_sides_on_side_id", using: :btree

  create_table "aromas_wines", id: false, force: :cascade do |t|
    t.integer "aroma_id", limit: 4
    t.integer "wine_id",  limit: 4
  end

  add_index "aromas_wines", ["aroma_id"], name: "index_aromas_wines_on_aroma_id", using: :btree
  add_index "aromas_wines", ["wine_id"], name: "index_aromas_wines_on_wine_id", using: :btree

  create_table "cooking_methods", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.boolean  "dry"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "dishes", force: :cascade do |t|
    t.integer  "ingredient_id",     limit: 4
    t.integer  "cooking_method_id", limit: 4
    t.integer  "user_id",           limit: 4
    t.boolean  "sweet"
    t.boolean  "spicy"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.integer  "sauce_id",          limit: 4
  end

  add_index "dishes", ["cooking_method_id"], name: "index_dishes_on_cooking_method_id", using: :btree
  add_index "dishes", ["ingredient_id"], name: "index_dishes_on_ingredient_id", using: :btree
  add_index "dishes", ["sauce_id"], name: "index_dishes_on_sauce_id", using: :btree
  add_index "dishes", ["user_id"], name: "index_dishes_on_user_id", using: :btree

  create_table "dishes_sides", id: false, force: :cascade do |t|
    t.integer "dish_id", limit: 4
    t.integer "side_id", limit: 4
  end

  add_index "dishes_sides", ["dish_id"], name: "index_dishes_sides_on_dish_id", using: :btree
  add_index "dishes_sides", ["side_id"], name: "index_dishes_sides_on_side_id", using: :btree

  create_table "ingredients", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.integer  "body_min",   limit: 4
    t.integer  "body_max",   limit: 4
  end

  create_table "sauces", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.integer  "alcohol_min", limit: 4
    t.integer  "alcohol_max", limit: 4
    t.integer  "tannin_min",  limit: 4
    t.integer  "tannin_max",  limit: 4
    t.integer  "acid_min",    limit: 4
    t.integer  "acid_max",    limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "sides", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "kind",       limit: 255
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.boolean  "admin"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "wines", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.integer  "body",       limit: 4
    t.integer  "alcohol",    limit: 4
    t.integer  "tannin",     limit: 4
    t.integer  "acid",       limit: 4
    t.integer  "sweetness",  limit: 4
    t.boolean  "sparkling"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

end
